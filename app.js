const express = require('express');
const path = require('path');
const BookModel = require('./models/bookModel');
const BookController = require('./controllers/bookController');

const app = express();
const port = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.urlencoded({ extended: true }));
app.use('/static', express.static(path.join(__dirname, 'static')));

const bookModel = new BookModel({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || 'password',
  database: process.env.DB_NAME || 'library'
});
const bookController = new BookController(bookModel);

app.get('/', async (req, res) => {
  const books = await bookController.getBooks();
  res.render('index', {
    books,
    dbReady: bookController.dbReady(),
    dbError: bookController.dbError()
  });
});

app.post('/add', async (req, res) => {
  const { title, author, year, image_url } = req.body;

  if (title && author && year) {
    await bookController.createBook(title, author, year, image_url || '');
  }

  res.redirect('/');
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

app.listen(port, () => {
  console.log(`Servidor iniciado en http://localhost:${port}`);
});

module.exports = app;
