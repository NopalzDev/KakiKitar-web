create database nopaltest;
use nopaltest;

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(50),
    upwd VARCHAR(50),
    uemail VARCHAR(50),
    umobile VARCHAR(20)
);
desc users;
select * from users;

CREATE TABLE WasteListings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    weight DECIMAL(10, 2) NOT NULL,
    description TEXT,
    image_path VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
desc WasteListings;
select * from WasteListings;

CREATE TABLE contact_form (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
desc contact_form;
select * from contact_form;