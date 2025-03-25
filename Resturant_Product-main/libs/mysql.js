import mysql from 'mysql2/promise';

export const connect_mysql = mysql.createPool({
  host: 'srv645593',  // Your MySQL host from VPS
  user: 'dev',        // Your MySQL username
  password: 'CafeWithAC@123', // Your MySQL password
  database: 'db',     // Your database name
  port: 3306,         // MySQL port (default)
  connectionLimit: 200,
  waitForConnections: true,
  queueLimit: 0,
});

export const connect_mysql_obj = async () => {
  const connection = await mysql.createConnection({
    host: 'srv645593',
    user: 'dev',
    password: 'CafeWithAC@123',
    database: 'db',
    port: 3306,
  });
  return connection;
};
