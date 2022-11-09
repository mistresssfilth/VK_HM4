INSERT INTO heroes(hero_id, username, money, attack, health, deference)
VALUES
    (1, 'mistressfilth', 2000, 783, 12000, 310),
    (2, 'wallseat', 1200, 680, 11182, 580),
    (3, 'naomo', 140, 784, 9988, 201);
INSERT INTO users(user_id, login, password, heroes_id, friends_count)
VALUES
    (1, 'alina0306', '228', 1, 1),
    (2, 'stas', 'qwerty', 2, 0),
    (3, 'nasty', 'aofjejfo', 3, 1);
INSERT INTO items_type(type_id, name)
VALUES
    (1, '??????'),
    (2, '???????'),
    (3, '?????');
INSERT INTO items_color(color_id, name)
VALUES
    (1, '?????'),
    (2, '???????'),
    (3, '?????'),
    (4, '??????????');
INSERT INTO items(item_id, item_type, color, health, deference, attack, price, name)
VALUES
    (1, 1, 4, 0, 0, 410, 2000, '??? ??????????'),
    (2, 3, 1, 0, 0, 0, 1, '??????? ????????'),
    (3, 1, 2, 0, 0, 110, 89, '??? ??????????');
INSERT INTO inventory(inventory_id, item_id, hero_id)
VALUES
    (1, 1, 1),
    (2, 2, 1),
    (3, 1, 2),
    (4, 3, 3);
INSERT INTO shops(shop_id,hero_id, item_id )
VALUES
    (1, 1, 1);
INSERT INTO relations(relation_id, name)
VALUES
    (1, '?????? ?????????'),
    (2, '?????? ??????'),
    (3, '? ????????');
INSERT INTO friends(friend_id, friend_one, friend_two, relation)
VALUES
    (1, 1, 3, 2),
    (2, 1, 2, 1),
    (3, 3, 1, 2);




