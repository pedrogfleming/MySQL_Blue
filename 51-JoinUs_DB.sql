CREATE DATABASE join_us;
USE join_us;
CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);
DESC users;
SELECT * FROM users;

TRUNCATE TABLE users;