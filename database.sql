CREATE DATABASE ops_db;

USE ops_db;

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    status VARCHAR(50),
    duration INT
);
