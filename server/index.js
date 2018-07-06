const express = require('express');
const { json } = require('body-parser');

const port = 3001;

const app = express();

app.get('/', (req, res) => {
  res.status(200).json('Hello Docker');
});

app.listen(port, () => {
  console.log(`Listening on port: ${port}`);
});
