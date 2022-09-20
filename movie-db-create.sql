-- CODING TEMPLE - Movie Theater Database Creation

-- customer table creation
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email_address VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- movie table creation
create table movie(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_rating VARCHAR(30)
);

-- tickets table creation 
create table ticket(
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(5,2),
	theater_room VARCHAR(10),
	showing_time DATE,
	movie_id INTEGER not null,
	foreign KEY(movie_id) references movie(movie_id)
);

-- concessions table creation
create table concession(
	concession_id SERIAL primary key,
	concession_name VARCHAR(100),
	concession_type VARCHAR(100),
	concession_price NUMERIC(5,2)
);

-- c_order table creation 
create table c_order(
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	ticket_id INTEGER,
	concession_id INTEGER,
	foreign KEY(ticket_id) references ticket(ticket_id),
	foreign KEY(concession_id) references concession(concession_id)
);

-- cart table creation
create table cart(
	cart_id SERIAL primary key,
	customer_id INTEGER not null,
	order_id INTEGER not null,
	foreign KEY(customer_id) references customer(customer_id),
	foreign key(order_id) references c_order(order_id)
);
