import mysql from 'mysql2/promise';

export const connect_mysql = mysql.createPool({
  host: 'localhost',  // XAMPP MySQL runs locally
  user: 'root',       // Default XAMPP MySQL user
  password: '',       // XAMPP MySQL has no password by default
  database: 'db',     // Replace with your database name
  connectionLimit: 200,
  waitForConnections: true,
  queueLimit: 0,
});

export const connect_mysql_obj = async () => {
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'db',
  });
  return connection;
};
