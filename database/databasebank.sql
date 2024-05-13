

use HMBank;

-- Create the Customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create the Accounts table
CREATE TABLE IF NOT EXISTS Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Transactions table
CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10, 2),
    transaction_date DATETIME,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);


-- Insert 10 sample customers
INSERT INTO Customers (first_name, last_name, dob, email, phone_number, address)
VALUES
    ('John', 'Doe', '1990-05-25', 'john.doe@example.com', '1234567890', '123 Main St'),
    ('Jane', 'Smith', '1985-08-15', 'jane.smith@example.com', '9876543210', '456 Elm St'),
    ('Michael', 'Johnson', '1978-11-10', 'michael.johnson@example.com', '1112223333', '789 Oak St'),
    ('Emily', 'Williams', '1995-03-20', 'emily.williams@example.com', '4445556666', '101 Pine St'),
    ('David', 'Brown', '1980-07-18', 'david.brown@example.com', '7778889999', '202 Maple St'),
    ('Sarah', 'Taylor', '1987-09-28', 'sarah.taylor@example.com', '2223334444', '303 Cedar St'),
    ('James', 'Martinez', '1992-12-05', 'james.martinez@example.com', '6667778888', '404 Walnut St'),
    ('Jessica', 'Garcia', '1983-06-15', 'jessica.garcia@example.com', '9990001111', '505 Birch St'),
    ('Ryan', 'Lopez', '1975-04-30', 'ryan.lopez@example.com', '3334445555', '606 Pineapple St'),
    ('Emma', 'Lee', '1998-01-12', 'emma.lee@example.com', '8889990000', '707 Orange St');

-- Insert 10 sample accounts
INSERT INTO Accounts (customer_id, account_type, balance)
VALUES
    (1, 'savings', 1000.00),
    (2, 'current', 5000.00),
    (3, 'savings', 2500.00),
    (4, 'current', 3000.00),
    (5, 'savings', 1500.00),
    (6, 'current', 2000.00),
    (7, 'savings', 4000.00),
    (8, 'current', 3500.00),
    (9, 'savings', 2800.00),
    (10, 'current', 2200.00);


-- Insert 10 sample transactions
INSERT INTO Transactions (account_id, transaction_type, amount, transaction_date)
VALUES
    (1, 'deposit', 500.00, '2024-05-01 10:00:00'),
    (1, 'withdrawal', 200.00, '2024-05-02 12:00:00'),
    (2, 'deposit', 1000.00, '2024-05-03 14:00:00'),
    (2, 'withdrawal', 700.00, '2024-05-04 16:00:00'),
    (3, 'deposit', 800.00, '2024-05-05 18:00:00'),
    (3, 'withdrawal', 400.00, '2024-05-06 20:00:00'),
    (4, 'deposit', 1200.00, '2024-05-07 22:00:00'),
    (4, 'withdrawal', 900.00, '2024-05-08 08:00:00'),
    (5, 'deposit', 300.00, '2024-05-09 10:00:00'),
    (5, 'withdrawal', 100.00, '2024-05-10 12:00:00');


SELECT * FROM Customers;

SELECT * FROM Accounts;

SELECT * FROM Transactions;

