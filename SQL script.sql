-- FRAUD DETECTION PROJECT 	(made by Furkan Polat)

CREATE DATABASE Fraud_Detection

-- CREATE TABLE 
CREATE TABLE transactions (
transaction_id INT Primary key,
user_id int,
amount decimal,
transaction_date datetime,
transaction_location varchar(50),
transaction_type varchar(50),
is_fraud boolean);

CREATE TABLE users (
user_id int,
user_name varchar(30),
email varchar(50),
phone_number varchar(30),
address varchar(50),
registration_date date);

-- OUR DATASET
INSERT INTO transactions (transaction_id, user_id, amount, transaction_date, transaction_location, transaction_type, is_fraud) VALUES
(1, 1, 150.00, '2023-09-10 12:45:00', 'New York', 'Online', 0),
(2, 2, 30.00, '2023-08-05 14:15:00', 'Los Angeles', 'Physical', 0),
(3, 3, 200.00, '2023-07-18 16:45:00', 'San Francisco', 'Online', 1),
(4, 4, 500.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 0),
(5, 5, 120.00, '2023-09-12 09:20:00', 'Chicago', 'Physical', 1),
(6, 6, 10.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(7, 7, 75.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(8, 8, 220.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 1),
(9, 9, 95.00, '2023-07-25 18:00:00', 'Austin', 'Online', 0),
(10, 10, 300.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 1),
(11, 1, 1500.00, '2023-09-15 12:00:00', 'New York', 'Physical', 1),
(12, 2, 45.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(13, 3, 200.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 0),
(14, 4, 500.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 0),
(15, 5, 130.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 0),
(16, 6, 10.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(17, 7, 75.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 1),
(18, 8, 220.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 0),
(19, 9, 100.00, '2023-07-25 18:00:00', 'Austin', 'Online', 0),
(20, 10, 450.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 0),
(21, 1, 50.00, '2023-09-05 14:15:00', 'New York', 'Online', 0),
(22, 2, 30.00, '2023-08-05 14:15:00', 'Los Angeles', 'Physical', 1),
(23, 3, 200.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 0),
(24, 4, 500.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 0),
(25, 5, 90.00, '2023-09-12 09:20:00', 'Chicago', 'Physical', 1),
(26, 6, 10.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(27, 7, 65.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(28, 8, 220.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 0),
(29, 9, 95.00, '2023-07-25 18:00:00', 'Austin', 'Online', 1),
(30, 10, 300.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 1),
(31, 1, 500.00, '2023-09-15 12:00:00', 'New York', 'Physical', 0),
(32, 2, 55.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(33, 3, 200.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 0),
(34, 4, 500.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 1),
(35, 5, 120.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 0),
(36, 6, 15.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(37, 7, 75.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(38, 8, 220.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 1),
(39, 9, 100.00, '2023-07-25 18:00:00', 'Austin', 'Online', 0),
(40, 10, 400.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 0),
(41, 1, 200.00, '2023-09-15 12:00:00', 'New York', 'Physical', 1),
(42, 2, 60.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(43, 3, 300.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 0),
(44, 4, 500.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 1),
(45, 5, 110.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 1),
(46, 6, 10.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(47, 7, 85.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(48, 8, 230.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 0),
(49, 9, 105.00, '2023-07-25 18:00:00', 'Austin', 'Online', 1),
(50, 10, 350.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 1),
(51, 1, 450.00, '2023-09-15 12:00:00', 'New York', 'Physical', 0),
(52, 2, 55.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(53, 3, 275.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 0),
(54, 4, 525.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 1),
(55, 5, 120.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 1),
(56, 6, 12.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(57, 7, 95.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(58, 8, 230.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 1),
(59, 9, 115.00, '2023-07-25 18:00:00', 'Austin', 'Online', 0),
(60, 10, 400.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 0),
(61, 1, 700.00, '2023-09-15 12:00:00', 'New York', 'Physical', 1),
(62, 2, 60.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(63, 3, 350.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 1),
(64, 4, 575.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 1),
(65, 5, 150.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 0),
(66, 6, 10.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(67, 7, 95.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(68, 8, 235.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 0),
(69, 9, 125.00, '2023-07-25 18:00:00', 'Austin', 'Online', 0),
(70, 10, 450.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 1),
(71, 1, 800.00, '2023-09-15 12:00:00', 'New York', 'Physical', 0),
(72, 2, 65.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(73, 3, 250.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 0),
(74, 4, 500.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 0),
(75, 5, 130.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 0),
(76, 6, 20.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(77, 7, 85.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 1),
(78, 8, 240.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 0),
(79, 9, 110.00, '2023-07-25 18:00:00', 'Austin', 'Online', 1),
(80, 10, 380.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 0),
(81, 1, 550.00, '2023-09-15 12:00:00', 'New York', 'Physical', 0),
(82, 2, 35.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(83, 3, 220.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 1),
(84, 4, 480.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 0),
(85, 5, 110.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 0),
(86, 6, 18.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(87, 7, 80.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(88, 8, 230.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 1),
(89, 9, 105.00, '2023-07-25 18:00:00', 'Austin', 'Online', 0),
(90, 10, 400.00, '2023-09-03 08:50:00', 'Dallas', 'Transfer', 1),
(91, 1, 600.00, '2023-09-15 12:00:00', 'New York', 'Physical', 0),
(92, 2, 75.00, '2023-08-22 14:10:00', 'Los Angeles', 'Online', 0),
(93, 3, 275.00, '2023-07-28 16:45:00', 'San Francisco', 'Online', 1),
(94, 4, 450.00, '2023-09-01 11:30:00', 'Boston', 'Transfer', 0),
(95, 5, 90.00, '2023-09-02 09:20:00', 'Chicago', 'Physical', 1),
(96, 6, 12.00, '2023-08-21 13:45:00', 'Houston', 'Online', 0),
(97, 7, 75.00, '2023-09-14 17:55:00', 'Miami', 'Transfer', 0),
(98, 8, 235.00, '2023-08-12 10:10:00', 'Seattle', 'Physical', 0),
(99, 9, 250.00, '2023-09-01 11:45:00', 'Phoenix', 'Physical', 0),
(100, 5, 1000.00, '2023-09-05 09:00:00', 'Chicago', 'Transfer', 1);


INSERT INTO users (user_id, user_name, email, phone_number, address, registration_date) VALUES
(1, 'John Doe', 'john.doe@example.com', '555-1234', '123 Main St, New York, NY', '2021-05-10'),
(2, 'Jane Smith', 'jane.smith@example.com', '555-5678', '456 Oak St, Los Angeles, CA', '2021-07-15'),
(3, 'Michael Brown', 'michael.brown@example.com', '555-9876', '789 Pine St, San Francisco, CA', '2021-03-22'),
(4, 'Emily Davis', 'emily.davis@example.com', '555-6543', '101 Maple St, Boston, MA', '2021-04-18'),
(5, 'David Wilson', 'david.wilson@example.com', '555-4321', '202 Elm St, Chicago, IL', '2021-06-30'),
(6, 'Sarah Johnson', 'sarah.johnson@example.com', '555-8765', '303 Cedar St, Houston, TX', '2021-02-14'),
(7, 'Chris Lee', 'chris.lee@example.com', '555-3456', '404 Birch St, Miami, FL', '2021-09-19'),
(8, 'Laura Miller', 'laura.miller@example.com', '555-7890', '505 Spruce St, Seattle, WA', '2021-08-25'),
(9, 'Daniel Taylor', 'daniel.taylor@example.com', '555-6789', '606 Willow St, Austin, TX', '2021-01-11'),
(10, 'Jessica Martinez', 'jessica.martinez@example.com', '555-8901', '707 Redwood St, Dallas, TX', '2021-03-05'),
(11, 'Ryan Moore', 'ryan.moore@example.com', '555-2345', '808 Cedar St, Phoenix, AZ', '2021-07-07'),
(12, 'Sophia White', 'sophia.white@example.com', '555-3457', '909 Pine St, Las Vegas, NV', '2021-06-21'),
(13, 'Matthew Garcia', 'matthew.garcia@example.com', '555-8769', '101 Maple St, Denver, CO', '2021-09-30'),
(14, 'Olivia Martinez', 'olivia.martinez@example.com', '555-9878', '102 Birch St, San Diego, CA', '2021-05-04'),
(15, 'Brandon Perez', 'brandon.perez@example.com', '555-4563', '103 Oak St, San Jose, CA', '2021-02-11'),
(16, 'Victoria Adams', 'victoria.adams@example.com', '555-2346', '104 Elm St, Portland, OR', '2021-10-01'),
(17, 'Luke Hernandez', 'luke.hernandez@example.com', '555-5679', '105 Cedar St, Minneapolis, MN', '2021-03-13'),
(18, 'Ashley Thompson', 'ashley.thompson@example.com', '555-8902', '106 Spruce St, Kansas City, MO', '2021-08-15'),
(19, 'Jason Martinez', 'jason.martinez@example.com', '555-3458', '107 Redwood St, Charlotte, NC', '2021-01-22'),
(20, 'Ava Brown', 'ava.brown@example.com', '555-8760', '108 Pine St, Tampa, FL', '2021-06-25'),
(21, 'Liam Harris', 'liam.harris@example.com', '555-6785', '109 Oak St, Indianapolis, IN', '2021-07-14'),
(22, 'Chloe Clark', 'chloe.clark@example.com', '555-2347', '110 Cedar St, Columbus, OH', '2021-05-10'),
(23, 'Mason Lewis', 'mason.lewis@example.com', '555-8762', '111 Spruce St, Denver, CO', '2021-04-08'),
(24, 'Mia Nelson', 'mia.nelson@example.com', '555-5670', '112 Birch St, Memphis, TN', '2021-02-09'),
(25, 'Ethan Young', 'ethan.young@example.com', '555-7891', '113 Maple St, Baltimore, MD', '2021-06-11'),
(26, 'Lily Hall', 'lily.hall@example.com', '555-3459', '114 Oak St, Boston, MA', '2021-07-19'),
(27, 'Jack King', 'jack.king@example.com', '555-8903', '115 Elm St, Louisville, KY', '2021-09-13'),
(28, 'Isabella Scott', 'isabella.scott@example.com', '555-2348', '116 Redwood St, Milwaukee, WI', '2021-03-16'),
(29, 'Alexander Walker', 'alexander.walker@example.com', '555-6786', '117 Cedar St, Sacramento, CA', '2021-08-23'),
(30, 'Ella Baker', 'ella.baker@example.com', '555-8763', '118 Pine St, Salt Lake City, UT', '2021-01-25'),
(31, 'James Allen', 'james.allen@example.com', '555-5671', '119 Birch St, Jacksonville, FL', '2021-05-29'),
(32, 'Emily Wright', 'emily.wright@example.com', '555-7892', '120 Oak St, Cincinnati, OH', '2021-10-10'),
(33, 'Benjamin Rodriguez', 'benjamin.rodriguez@example.com', '555-3450', '121 Elm St, St. Louis, MO', '2021-06-17'),
(34, 'Madison Lopez', 'madison.lopez@example.com', '555-2349', '122 Cedar St, Nashville, TN', '2021-02-21'),
(35, 'Noah Hill', 'noah.hill@example.com', '555-6787', '123 Pine St, Raleigh, NC', '2021-08-29'),
(36, 'Grace Green', 'grace.green@example.com', '555-8764', '124 Redwood St, Detroit, MI', '2021-09-27'),
(37, 'Jacob Adams', 'jacob.adams@example.com', '555-8904', '125 Oak St, Cleveland, OH', '2021-07-20'),
(38, 'Aiden Carter', 'aiden.carter@example.com', '555-2341', '126 Maple St, Tucson, AZ', '2021-03-03'),
(39, 'Zoe Rivera', 'zoe.rivera@example.com', '555-8766', '127 Birch St, Atlanta, GA', '2021-08-07'),
(40, 'Logan Phillips', 'logan.phillips@example.com', '555-5672', '128 Spruce St, Orlando, FL', '2021-04-12'),
(41, 'Sofia Bennett', 'sofia.bennett@example.com', '555-7893', '129 Cedar St, Tampa, FL', '2021-06-06'),
(42, 'Mason Rivera', 'mason.rivera@example.com', '555-8767', '130 Pine St, Tulsa, OK', '2021-07-05'),
(43, 'Harper Gray', 'harper.gray@example.com', '555-5673', '131 Maple St, Albuquerque, NM', '2021-05-12'),
(44, 'Lucas Murphy', 'lucas.murphy@example.com', '555-2342', '132 Birch St, New Orleans, LA', '2021-10-04'),
(45, 'Amelia Diaz', 'amelia.diaz@example.com', '555-6788', '133 Redwood St, Charlotte, NC', '2021-02-28'),
(46, 'Henry Torres', 'henry.torres@example.com', '555-3451', '134 Oak St, Miami, FL', '2021-09-08'),
(47, 'Charlotte Patterson', 'charlotte.patterson@example.com', '555-2343', '135 Cedar St, Arlington, VA', '2021-08-30'),
(48, 'Sebastian Nguyen', 'sebastian.nguyen@example.com', '555-8768', '136 Pine St, Fort Worth, TX', '2021-06-19'),
(49, 'Avery Jenkins', 'avery.jenkins@example.com', '555-5674', '137 Birch St, Kansas City, MO', '2021-09-02'),
(50, 'Liam Reed', 'liam.reed@example.com', '555-7894', '138 Spruce St, Omaha, NE', '2021-07-17'),
(51, 'Hannah Reed', 'hannah.reed@example.com', '555-8769', '139 Cedar St, Fresno, CA', '2021-02-23'),
(52, 'Nathan Kelly', 'nathan.kelly@example.com', '555-2344', '140 Oak St, Virginia Beach, VA', '2021-05-08'),
(53, 'Sophie Coleman', 'sophie.coleman@example.com', '555-5675', '141 Maple St, El Paso, TX', '2021-06-04'),
(54, 'Elijah Bailey', 'elijah.bailey@example.com', '555-8905', '142 Birch St, Colorado Springs, CO', '2021-03-30'),
(55, 'Lily Mitchell', 'lily.mitchell@example.com', '555-6780', '143 Redwood St, Fresno, CA', '2021-07-09'),
(56, 'Jacob Perry', 'jacob.perry@example.com', '555-8760', '144 Oak St, San Antonio, TX', '2021-02-18'),
(57, 'Ella Cox', 'ella.cox@example.com', '555-7895', '145 Cedar St, Jacksonville, FL', '2021-08-19'),
(58, 'Wyatt Hughes', 'wyatt.hughes@example.com', '555-8761', '146 Maple St, Memphis, TN', '2021-04-15'),
(59, 'Grace Powell', 'grace.powell@example.com', '555-5676', '147 Oak St, Milwaukee, WI', '2021-06-26'),
(60, 'Eli Foster', 'eli.foster@example.com', '555-2345', '148 Cedar St, New York, NY', '2021-03-17'),
(61, 'Isaac Peterson', 'isaac.peterson@example.com', '555-6781', '149 Pine St, San Diego, CA', '2021-07-21'),
(62, 'Lillian Reed', 'lillian.reed@example.com', '555-8906', '150 Oak St, San Francisco, CA', '2021-05-31'),
(63, 'Isaiah Morgan', 'isaiah.morgan@example.com', '555-8762', '151 Cedar St, Chicago, IL', '2021-09-22'),
(64, 'Harper Bell', 'harper.bell@example.com', '555-5677', '152 Maple St, Houston, TX', '2021-01-13'),
(65, 'Nathan Lee', 'nathan.lee@example.com', '555-6782', '153 Spruce St, Boston, MA', '2021-07-12'),
(66, 'Abigail Ward', 'abigail.ward@example.com', '555-7896', '154 Oak St, Los Angeles, CA', '2021-09-26'),
(67, 'Caleb Flores', 'caleb.flores@example.com', '555-2346', '155 Redwood St, Miami, FL', '2021-06-02'),
(68, 'Sophie Bryant', 'sophie.bryant@example.com', '555-8907', '156 Pine St, Seattle, WA', '2021-03-28'),
(69, 'Jack Bennett', 'jack.bennett@example.com', '555-5678', '157 Maple St, New York, NY', '2021-08-24'),
(70, 'Madelyn Gonzalez', 'madelyn.gonzalez@example.com', '555-6783', '158 Birch St, Denver, CO', '2021-06-13'),
(71, 'David Brooks', 'david.brooks@example.com', '555-7897', '159 Oak St, Las Vegas, NV', '2021-02-02'),
(72, 'Savannah Evans', 'savannah.evans@example.com', '555-8763', '160 Cedar St, Phoenix, AZ', '2021-07-11'),
(73, 'Gabriel Bryant', 'gabriel.bryant@example.com', '555-8908', '161 Redwood St, Tampa, FL', '2021-05-22'),
(74, 'Levi Hayes', 'levi.hayes@example.com', '555-5679', '162 Oak St, Austin, TX', '2021-09-01'),
(75, 'Ariana Long', 'ariana.long@example.com', '555-2347', '163 Cedar St, Dallas, TX', '2021-08-05'),
(76, 'Liam Roberts', 'liam.roberts@example.com', '555-6784', '164 Pine St, Seattle, WA', '2021-04-26'),
(77, 'Zoey Hughes', 'zoey.hughes@example.com', '555-8909', '165 Oak St, San Francisco, CA', '2021-03-07'),
(78, 'Lucas Young', 'lucas.young@example.com', '555-3456', '166 Spruce St, Chicago, IL', '2021-09-20'),
(79, 'Lillian Sanders', 'lillian.sanders@example.com', '555-6785', '167 Oak St, Orlando, FL', '2021-02-13'),
(80, 'Henry Russell', 'henry.russell@example.com', '555-7898', '168 Redwood St, Kansas City, MO', '2021-06-23'),
(81, 'Oliver Hughes', 'oliver.hughes@example.com', '555-2348', '169 Birch St, Portland, OR', '2021-08-09'),
(82, 'Isaac Ross', 'isaac.ross@example.com', '555-6786', '170 Cedar St, Raleigh, NC', '2021-07-04'),
(83, 'Elena Simmons', 'elena.simmons@example.com', '555-8764', '171 Oak St, New Orleans, LA', '2021-06-03'),
(84, 'Nolan Turner', 'nolan.turner@example.com', '555-7899', '172 Maple St, Miami, FL', '2021-01-26'),
(85, 'Samuel Bryant', 'samuel.bryant@example.com', '555-3457', '173 Spruce St, Salt Lake City, UT', '2021-04-17'),
(86, 'Sophia Long', 'sophia.long@example.com', '555-6787', '174 Cedar St, Minneapolis, MN', '2021-08-14'),
(87, 'Amelia Brooks', 'amelia.brooks@example.com', '555-2349', '175 Birch St, Atlanta, GA', '2021-09-06'),
(88, 'William Young', 'william.young@example.com', '555-7890', '176 Maple St, Indianapolis, IN', '2021-07-01'),
(89, 'Sophia Mitchell', 'sophia.mitchell@example.com', '555-8765', '177 Pine St, Columbus, OH', '2021-05-06'),
(90, 'Andrew Kelly', 'andrew.kelly@example.com', '555-5670', '178 Oak St, Denver, CO', '2021-04-14'),
(91, 'Charlotte Cooper', 'charlotte.cooper@example.com', '555-6788', '179 Maple St, Chicago, IL', '2021-06-18'),
(92, 'Evelyn Bennett', 'evelyn.bennett@example.com', '555-7891', '180 Birch St, Los Angeles, CA', '2021-07-25'),
(93, 'Oliver Clark', 'oliver.clark@example.com', '555-8766', '181 Cedar St, Houston, TX', '2021-05-19'),
(94, 'Leah Powell', 'leah.powell@example.com', '555-2340', '182 Maple St, San Diego, CA', '2021-06-16'),
(95, 'Avery Gonzalez', 'avery.gonzalez@example.com', '555-6789', '183 Pine St, Las Vegas, NV', '2021-07-06'),
(96, 'Isaac Perry', 'isaac.perry@example.com', '555-7892', '184 Oak St, Sacramento, CA', '2021-03-15'),
(97, 'Madison Cox', 'madison.cox@example.com', '555-8767', '185 Cedar St, New York, NY', '2021-05-24'),
(98, 'James Jenkins', 'james.jenkins@example.com', '555-2341', '186 Spruce St, Miami, FL', '2021-08-17'),
(99, 'Lucas Hughes', 'lucas.hughes@example.com', '555-5671', '187 Redwood St, Los Angeles, CA', '2021-07-02'),
(100, 'Elena Murphy', 'elena.murphy@example.com', '555-7893', '188 Pine St, Chicago, IL', '2021-02-01');


/* TASK 1
Identify users with single high-value transactions
Objective: Find users who made transactions above a certain threshold (e.g., 5000 units), as these may indicate fraudulent behavior.*/
select user_id, transaction_id, amount from transactions where amount >=1000

/* TASK 2
Find users making many transactions on the same day
Objective: Users making many transactions within a single day may be engaging in fraudulent activity.*/
select user_id, count(transaction_id) as transaction_count, transaction_date from transactions
group by 1, 3
having transaction_count >2

/* TASK 3
Find users performing transactions in different locations on the same day
Identify users who made transactions from different locations on the same day, which may indicate suspicious activity.*/
SELECT user_id, transaction_date, COUNT(DISTINCT transaction_location) AS location_count
FROM Transactions
GROUP BY user_id, transaction_date
HAVING location_count > 1;

/* TASK4
Find users making many low-value transactions
Detect users who made more than 3 transactions with an amount less than 100 units.*/
select user_id, amount, count(transaction_id) as small_transactions from transactions where amount < 100
group by 1,2


/* TASK 5
Identify users with a high total transaction amount over a month
Find users who have spent more than 2000 units in total within a month.*/
SELECT user_id, sum(amount), MONTH(transaction_date) as transaction_month from transactions group by 1,3
having sum(amount) >2000

/* TASK 6
Flag users with suspicious first transaction behavior
Detect users who made significant transactions shortly after account creation (within 30 days).*/
SELECT t.user_id, MIN(t.transaction_date) AS first_transaction, SUM(t.amount) AS total_spent
FROM Transactions t
JOIN Users u ON t.user_id = u.user_id
GROUP BY t.user_id
HAVING DATEDIFF(first_transaction, u.registration_date) < 30 AND total_spent > 1000;

/* TASK 7
Find duplicate users based on email or phone number
Objective: Detect users who share the same email or phone number but have different user IDs, which may indicate multiple fake accounts.*/
SELECT email, count(user_id) as user_count from users group by 1 having count(user_id) > 1
/* TASK 8
Identify users sharing the same address
Objective: Users who share the same physical address but have different accounts could be linked to fraudulent activity.*/
SELECT address, COUNT(DISTINCT user_id) AS user_count
FROM Users
GROUP BY address
HAVING user_count > 1;

/* TASK 9
Detect inactive users who suddenly make large transactions
Objective: Find users who have been inactive for an extended period and suddenly engage in large or frequent transactions, a potential sign of fraud.*/
SELECT user_id, MAX(transaction_date) AS last_transaction, DATEDIFF(CURDATE(), MAX(transaction_date)) AS days_inactive
FROM Transactions
GROUP BY user_id
HAVING days_inactive > 90 AND MAX(amount) > 500;

/* TASK 10
List users with multiple fraud indicators
Objective: Compile a list of users who trigger multiple fraud detection flags from the above steps, identifying high-risk accounts for further investigation.*/
SELECT t.user_id, COUNT(t.transaction_id) AS fraud_signs
FROM Transactions t
JOIN Users u ON t.user_id = u.user_id
WHERE t.amount > 1000 
   OR t.user_id IN (
      SELECT user_id 
      FROM Transactions 
      GROUP BY user_id, transaction_date 
      HAVING COUNT(transaction_id) > 2
   )
   OR t.user_id IN (
      SELECT user_id 
      FROM Transactions 
      WHERE amount < 100 
      GROUP BY user_id 
      HAVING COUNT(transaction_id) > 3
   )
GROUP BY t.user_id
HAVING fraud_signs > 1;

