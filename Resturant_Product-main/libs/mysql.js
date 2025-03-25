import mysql from 'mysql2/promise';

export const connect_mysql = mysql.createPool({
  host: '127.0.0.1',  // MySQL host (same as in Workbench)
  user: 'dev',        // MySQL username (updated to 'dev')
  password: 'CafeWithAC@123',  // MySQL password for 'dev' user
  database: 'db',     // Your database name
  port: 3306,         // MySQL port
  connectionLimit: 200,
  waitForConnections: true,
  queueLimit: 0,
});

export const connect_mysql_obj = async () => {
  const connection = await mysql.createConnection({
    host: '127.0.0.1', // Corrected host
    user: 'dev',       // Updated username to 'dev'
    password: 'CafeWithAC@123',  // Updated password for 'dev' user
    database: 'db',
    port: 3306,        // Ensure port is set correctly
  });
  return connection;
};
