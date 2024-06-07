const express = require('express')
const app = express()
const db = require('./db')
const port = 3000

app.get('/', async (req, res) => {
   try {
      const result = await db.query('SELECT * FROM pg_catalog.pg_tables');
      res.json(result.rows);
   } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
   }
})

app.listen(port, () => {
   console.log(`Example app listening at http://localhost:${port}`)
})