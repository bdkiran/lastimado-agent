SELECT * FROM users;

SELECT * FROM users WHERE user_id=1;

INSERT INTO users ( password, email, firstname, lastname) VALUES
 ('password', 'brad@gmail.com', 'Jorge', 'Domingez'),
 ('password', 'stever@gmail.com', 'Sarah', 'Lasito'),
 ('password', 'jill@gmail.com', 'Manny', 'Guntierez'),
 ('password', 'alfy@gmail.com', 'Abagail', 'Fuentes'),
 ('password', 'ernie@gmail.com', 'Tisha', 'Oakman');

DELETE FROM users WHERE user_id=1;

UPDATE users SET username='New username' WHERE user_id=1;
