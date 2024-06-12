-- SQL Document 2 Estefany Morales Campos

-- insert two customers to Customers table
INSERT INTO Customers (first_name, last_name, email, phone_number) 
VALUES ('John', 'Doe', 'john.doe@example.com', '555-1234');

INSERT INTO Customers (first_name, last_name, email, phone_number) 
VALUES ('Jane', 'Smith', 'jane.smith@example.com', '555-5678');


-- insert two movies to Movies table
INSERT INTO Movies (title, genre, duration, rating) 
VALUES ('Inception', 'Sci-Fi', 148, 'PG-13');

INSERT INTO Movies (title, genre, duration, rating) 
VALUES ('The Matrix', 'Action', 136, 'R');


-- insert two tickets to Tickets table
INSERT INTO Tickets (customer_id, movie_id, show_time, seat_number, price) 
VALUES (1, 1, '2024-06-15 19:30:00', 'A10', 12.50);

INSERT INTO Tickets (customer_id, movie_id, show_time, seat_number, price) 
VALUES (2, 2, '2024-06-16 21:00:00', 'B5', 10.00);


-- insert two concessions to Concessions table
INSERT INTO Concessions (name, price, quantity) 
VALUES ('Popcorn', 5.00, 100);

INSERT INTO Concessions (name, price, quantity) 
VALUES ('Soda', 3.00, 200);


-- insert customer purchases to junction table 
INSERT INTO Customer_Concessions (customer_id, concession_id, quantity) 
VALUES (1, 1, 1); -- John Doe buys 1 Popcorn

INSERT INTO Customer_Concessions (customer_id, concession_id, quantity) 
VALUES (2, 1, 2); -- Jane Smith buys 2 Popcorns

INSERT INTO Customer_Concessions (customer_id, concession_id, quantity) 
VALUES (2, 2, 1); -- Jane Smith buys 1 Soda

