SET SQL_SAFE_UPDATES = 0;

UPDATE Customer
SET Email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE Customer
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE Customer
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';
