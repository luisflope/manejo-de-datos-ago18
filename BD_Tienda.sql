CREATE TABLE products (
     id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
     price INT NOT NULL,
     description VARCHAR(50) NOT NULL
);

CREATE TABLE clients (
     id INT AUTO_INCREMENT NOT NULL PRIMARY key,
     rfc VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE transactions (
     id INT AUTO_INCREMENT NOT NULL PRIMARY key,
     date_trans TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
     client_id INT NOT NULL,
     FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE sales (
     prod_id INT NOT NULL,
     FOREIGN KEY (prod_id) REFERENCES products(id),
     trans_id INT NOT NULL,
     FOREIGN KEY (trans_id) REFERENCES transactions(id)
);