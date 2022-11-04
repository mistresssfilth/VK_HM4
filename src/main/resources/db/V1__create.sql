CREATE TABLE players
(
    id int NOT NULL,
    username VARCHAR NOT NULL,
    item_id int REFERENCES items (id) ON UPDATE CASCADE ON DELETE CASCADE,
    friend_id int REFERENCES friends (id) ON UPDATE CASCADE ON DELETE CASCADE,
    invite_id int REFERENCES invites (id) ON UPDATE CASCADE ON DELETE CASCADE,
    match_id int REFERENCES matches (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT players_pk PRIMARY KEY (id)
);
CREATE TABLE inventory
(
    id int NOT NULL,
    count int,
    item_id int REFERENCES items (id) ON UPDATE CASCADE ON DELETE CASCADE,
    hero_id int REFERENCES heroes (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT inventory_pk PRIMARY KEY (id)
)
CREATE TABLE items
(
    id int NOT NULL,
    name VARCHAR NOT NULL,
    type int,
    CONSTRAINT items_pk PRIMARY KEY (id)
);
CREATE TABLE shops
(
    id int NOT NULL,
    item_id int REFERENCES items (id) ON UPDATE CASCADE ON DELETE CASCADE,
    isSold boolean,
    CONSTRAINT shops_pk PRIMARY KEY (id)
);
CREATE TABLE friends
(
    id int NOT NULL,
    player_id int REFERENCES players (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT friends_pk PRIMARY KEY (id)
);
CREATE TABLE invites
(
    id int NOT NULL,
    player_id int REFERENCES players (id) ON UPDATE CASCADE ON DELETE CASCADE,
    isActive boolean,
    CONSTRAINT invites_pk PRIMARY KEY (id)
);


