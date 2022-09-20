-- CODING TEMPLE - Movie Theater Database Creation

-- Insert for customer table
insert into customer(customer_id, first_name, last_name, email_address, address, billing_info)
	values (1, 'Blooregard Q', 'Kazoo', 'bloo@fosters.com', '555 Fosters Home Ln', '1234-1234-1234-1234 123 12/34');

-- Insert for movie table
insert into movie (movie_id, movie_name, movie_rating)
	values (1, 'Billy and Mandys Big Boogey Adventure', 'PG');

-- Insert for ticket table
insert into ticket(ticket_id, ticket_price, theater_room, showing_time, movie_id)
	values (1, 10.00, 'D20', '2022-09-19 10:30:00', 1);

-- Insert for concession table
insert into concession(concession_id, concession_name, concession_type, concession_price)
	values (1, 'Whoppers', 'Candy', 10.00);

-- Insert for c_order
insert into c_order(order_id, sub_total, total_cost, ticket_id, concession_id)
	values (1, 20.00, 25.00, 1, 1);

-- Insert for cart
insert into cart (cart_id, customer_id, order_id)
	values (1, 1, 1);
