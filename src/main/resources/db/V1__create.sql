CREATE TABLE heroes
(
    hero_id SERIAL,
    username VARCHAR NOT NULL,
    money int,
    attack int,
    health int,
    deference int,
    CONSTRAINT heroes_pk PRIMARY KEY (hero_id)
);
CREATE TABLE users
(
    user_id SERIAL,
    login VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    heroes_id int NOT NULL REFERENCES heroes (hero_id) ON UPDATE CASCADE ON DELETE CASCADE,
    friends_count int,
    CONSTRAINT users_pk PRIMARY KEY (user_id)
);

CREATE TABLE items_type
(
    type_id SERIAL,
    name VARCHAR NOT NULL,
    CONSTRAINT items_type_pk PRIMARY KEY (type_id)
);
CREATE TABLE items_color
(
    color_id SERIAL,
    name VARCHAR,
    CONSTRAINT items_color_pk PRIMARY KEY (color_id)
);
CREATE TABLE items
(
    item_id SERIAL,
    item_type int NOT NULL REFERENCES items_type (type_id) ON UPDATE CASCADE ON DELETE CASCADE,
    color int NOT NULL REFERENCES items_color (color_id) ON UPDATE CASCADE ON DELETE CASCADE,
    health int,
    deference int,
    attack int,
    price int,
    name VARCHAR,
    CONSTRAINT items_pk PRIMARY KEY (item_id)
);

CREATE TABLE inventory
(
    inventory_id int NOT NULL,
    item_id int NOT NULL REFERENCES items (item_id) ON UPDATE CASCADE ON DELETE CASCADE,
    hero_id int NOT NULL REFERENCES heroes (hero_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT inventory_pk PRIMARY KEY (inventory_id)
);

CREATE TABLE shops
(
    shop_id SERIAL,
    hero_id int NOT NULL REFERENCES heroes (hero_id) ON UPDATE CASCADE ON DELETE CASCADE,
    item_id int NOT NULL REFERENCES items (item_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT shops_pk PRIMARY KEY (shop_id)
);
CREATE TABLE relations
(
    relation_id SERIAL,
    name VARCHAR,
    CONSTRAINT relations_pk PRIMARY KEY (relation_id)
);
CREATE TABLE friends
(
    friend_id SERIAL,
    friend_one int NOT NULL REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    friend_two int NOT NULL REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    relation int NOT NULL REFERENCES relations(relation_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT friends_pk PRIMARY KEY (friend_id)
);


CREATE TABLE updates
(
    update_id SERIAL,
    description VARCHAR,
    user_id int NOT NULL REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT updates_pk PRIMARY KEY (update_id)
);




