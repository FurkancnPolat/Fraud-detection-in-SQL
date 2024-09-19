# Fraud-detection-in-SQL
Overview
This project focuses on detecting potentially fraudulent transactions from a dataset using SQL queries. By analyzing transaction patterns, user behavior, and various fraud indicators, the system flags suspicious activities for further investigation. The project is designed to demonstrate SQL proficiency and provide insights into how fraud detection algorithms work in real-world applications.

The data consists of two tables:

Users – Contains information about each user, such as email, phone number, address, and registration date.
Transactions – Contains details about user transactions, including amount, date, type (debit/credit), location, and whether the transaction is flagged as fraud.
Project Goals
The goal of this project is to build a series of SQL queries that will:

Identify high-risk transactions.
Detect unusual patterns of behavior.
Flag users that match common fraud profiles.
Provide insights into fraud-prone activities using structured query analysis.
Database Schema
Users Table
Column	Type	Description
user_id	INT	Unique identifier for each user
user_name	VARCHAR(30)	Name of the user
email	VARCHAR(50)	User's email address
phone_number	VARCHAR(30)	User's phone number
address	VARCHAR(50)	User's physical address
registration_date	DATE	Date the user registered
Transactions Table
Column	Type	Description
transaction_id	INT	Unique identifier for each transaction
user_id	INT	ID of the user who made the transaction
amount	DECIMAL	Amount of the transaction
transaction_date	DATETIME	Date and time of the transaction
transaction_location	VARCHAR(50)	Location where the transaction took place
transaction_type	VARCHAR(50)	Type of transaction (debit/credit)
is_fraud	BOOLEAN	Whether the transaction is marked as fraud
SQL Tasks
The project contains 10 SQL queries that aim to detect fraud in the transaction dataset. Each query addresses a different fraud detection task, such as identifying users with high-value transactions, detecting users making many low-value transactions, or finding users making transactions from multiple locations on the same day.

Key Tasks
Identify users with single high-value transactions

Finds transactions greater than 1000 units.
Find users making many transactions on the same day

Detects users making more than 2 transactions on the same day.
Find users performing transactions in different locations on the same day

Flags users transacting from multiple locations on the same day.
Detect users with a high number of low-value transactions

Identifies users who frequently make small transactions under 100 units.
Flag users with a high total transaction amount over a month

Detects users with total transactions exceeding 2000 units in a month.
Identify users with suspicious behavior right after registration

Flags users who made large transactions shortly after account creation.
Find duplicate users based on email or phone number

Detects users sharing the same email or phone number.
List users sharing the same physical address

Flags users sharing the same address, which may indicate coordinated fraud.
Detect inactive users who suddenly make large transactions

Identifies users inactive for 90 days or more who suddenly make large transactions.
Summarize users with multiple fraud indicators

Combines various fraud patterns to identify users with multiple signs of fraud.
Getting Started
Prerequisites
MySQL or any SQL-compatible database engine installed.
Basic understanding of SQL for running queries.
Setup Instructions
Create the Database:
Create a new database named fraud_detection:

sql
Kodu kopyala
CREATE DATABASE fraud_detection;
Create the Tables:
Run the following SQL commands to create the Users and Transactions tables:

sql
Kodu kopyala
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(30),
    email VARCHAR(50),
    phone_number VARCHAR(30),
    address VARCHAR(50),
    registration_date DATE
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL,
    transaction_date DATETIME,
    transaction_location VARCHAR(50),
    transaction_type VARCHAR(50),
    is_fraud BOOLEAN
);
Insert Data:
Insert sample data into the Users and Transactions tables, or import existing data files into the database.

Run the Queries:
Execute each of the 10 fraud detection SQL queries sequentially to analyze the data and detect fraudulent activities.

Example Query
To find users making many transactions on the same day:

sql
Kodu kopyala
SELECT user_id, COUNT(transaction_id) AS transaction_count, transaction_date
FROM Transactions
GROUP BY user_id, transaction_date
HAVING transaction_count > 2;
Conclusion
This project demonstrates how structured SQL queries can be used to detect potential fraud in transactional data. By systematically analyzing different fraud indicators, this project helps identify high-risk users and transactions in a real-world dataset.

