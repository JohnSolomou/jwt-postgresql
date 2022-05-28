CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; -- created extension second 

CREATE DATABASE jwttutorial -- created database first 
CREATE TABLE users (
  user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_name TEXT NOT NULL,
  user_email TEXT NOT NULL UNIQUE,
  user_password TEXT NOT NULL
);-- third we created this table 

SELECT * FROM users

INSERT INTO users ( user_name,user_email,user_password) VALUES ('Bob','bob@gmail.com','bobby');
INSERT INTO users ( user_name,user_email,user_password) VALUES ('Fred','fred@gmail.com','freddy');
--psql -u postgres  use to login to postgres
--\c jwttutorial connect to jwt database
--\dt to listing tables 
--