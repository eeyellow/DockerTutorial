require('dotenv').config();
const { Pool } = require('pg');

const pool = new Pool({
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    host: 'postgres',
    port: 5432, // default Postgres port
    database: process.env.DB_DATABASE
});

module.exports = {
    query: (text, params) => pool.query(text, params)
};