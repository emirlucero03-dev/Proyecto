class BookController {
  constructor(bookModel) {
    this.bookModel = bookModel;
  }

  async getBooks() {
    return this.bookModel.getBooks();
  }

  async createBook(title, author, year, imageUrl) {
    return this.bookModel.createBook(title, author, year, imageUrl);
  }

  dbReady() {
    return this.bookModel.dbReady;
  }

  dbError() {
    return this.bookModel.dbError;
  }
}

module.exports = BookController;
