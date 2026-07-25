const mysql = require('mysql2/promise');

class BookModel {
  constructor(config) {
    this.host = config.host || 'localhost';
    this.user = config.user || 'root';
    this.password = config.password || 'password';
    this.database = config.database || 'library';
    this.dbReady = false;
    this.dbError = null;
    this._inMemoryBooks = [];
    this._initialize();
  }

  async _initialize() {
    try {
      const connection = await this._connect();
      await connection.execute(`
        CREATE TABLE IF NOT EXISTS books (
          id INT AUTO_INCREMENT PRIMARY KEY,
          title VARCHAR(255) NOT NULL,
          author VARCHAR(255) NOT NULL,
          year VARCHAR(4) NOT NULL,
          image_url VARCHAR(255)
        )
      `);
      await connection.end();
      this.dbReady = true;
      this.dbError = null;
    } catch (error) {
      this.dbReady = false;
      this.dbError = error.message;
    }
  }

  async _connect() {
    return mysql.createConnection({
      host: this.host,
      user: this.user,
      password: this.password,
      database: this.database
    });
  }

  async getBooks() {
    if (!this.dbReady) {
      return this._inMemoryBooks;
    }

    const connection = await this._connect();
    try {
      const [rows] = await connection.execute('SELECT id, title, author, year, image_url FROM books');
      return rows;
    } finally {
      await connection.end();
    }
  }

  async createBook(title, author, year, imageUrl) {
    if (!this.dbReady) {
      this._inMemoryBooks.push({
        id: this._inMemoryBooks.length + 1,
        title,
        author,
        year,
        image_url: imageUrl || null
      });
      return;
    }

    const connection = await this._connect();
    try {
      await connection.execute(
        'INSERT INTO books (title, author, year, image_url) VALUES (?, ?, ?, ?)',
        [title, author, year, imageUrl || null]
      );
    } catch (error) {
      this.dbReady = false;
      this.dbError = error.message;
      this._inMemoryBooks.push({
        id: this._inMemoryBooks.length + 1,
        title,
        author,
        year,
        image_url: imageUrl || null
      });
    } finally {
      await connection.end();
    }
  }
}

module.exports = BookModel;
