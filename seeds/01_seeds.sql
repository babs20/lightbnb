-- DELETE FROM users;
-- DELETE FROM properties;
-- DELETE FROM reservations;
-- DELETE FROM property_reviews;

INSERT INTO users (name, email, password)
VALUES ('Armand Hill', 'lera_hahn@dickens.org', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Stephanie Wolf', 'darius.homenick@tod.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Lloyd Boehm', 'ebba.deckow@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Epic House Beverly Hills', 'description', 'https://www.retrogames.cz/games/978/N64_01.gif', 'https://assets.vg247.com/current//2019/02/noclip_mario_64_castle.jpg', 200000, 5, 4, 6, 'USA', '123 Beverly Hills Drive', 'Hollywood', 'California', '12345', TRUE),
(2, 'Small Country Villa', 'description', 'https://i.ytimg.com/vi/-Y3hYHNBJM0/maxresdefault.jpg', 'https://i.ytimg.com/vi/nEXTMukz0XY/maxresdefault.jpg', 30000, 2, 2, 3, 'USA', '123 Nowhere Boulevard', 'Hurricane', 'West Virginia', '25482', TRUE),
(1, 'Massive Mansion Manor', 'description', 'https://www.mariowiki.com/images/thumb/e/e7/BigBoosHaunt.png/280px-BigBoosHaunt.png', 'https://www.mariowiki.com/images/1/1e/SM64DS_Big_Boo%27s_Haunt.png', 600000, 8, 10, 15, 'USA', '134 Rich Street', 'Oil Town', 'Texas', '2300', FALSE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-05-15', '2021-05-20', 2, 3),
('2021-08-02', '2021-08-10', 1, 2),
('2021-03-03', '2021-04-03', 2, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (3, 2, 1, 4, 'message'),
(2, 1, 2, 5, 'message'),
(1, 2, 3, 2, 'message');
