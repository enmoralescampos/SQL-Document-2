-- SQL Document 2 Estefany Morales Campos

-- create Customers table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15)
);

-- create Movies table
CREATE TABLE Movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    duration INTEGER,
    rating VARCHAR(10)
);

-- create Tickets table
CREATE TABLE Tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id),
    movie_id INTEGER REFERENCES Movies(movie_id),
    show_time TIMESTAMP,
    seat_number VARCHAR(10),
    price DECIMAL(5,2)
);

-- create Concessions table
CREATE TABLE Concessions (
    concession_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(5,2),
    quantity INTEGER
);

-- create Customer_Concessions junction table
CREATE TABLE Customer_Concessions (
    customer_concession_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id),
    concession_id INTEGER REFERENCES Concessions(concession_id),
    quantity INTEGER
);






