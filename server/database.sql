CREATE DATABASE limsmaster;

-- set extension --
--create extension if not exists "uuid-ossp";--
CREATE TABLE users(
    user_id uuid PRIMARY KEY DEFAULT 
    uuid_generate_v4(),
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL
);

INSERT INTO users (user_name, user_email, user_password) VALUES
    ('john_doe', 'john@example.com', 'password123'),
    ('jane_smith', 'jane@example.com', 'letmein'),
    ('mike_jones', 'mike@example.com', 'securepassword'),
    ('emily_wilson', 'emily@example.com', '12345678');