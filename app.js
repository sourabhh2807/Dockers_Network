// app.js
const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Hello Docker! \n Sourabh this side');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
