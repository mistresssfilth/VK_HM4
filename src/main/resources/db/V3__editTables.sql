CREATE TABLE teams
(
    team_id SERIAL,
    name VARCHAR NOT NULL,
    hero1_id int NOT NULL REFERENCES heroes(hero_id) ON UPDATE CASCADE ON DELETE CASCADE,
    hero2_id int NOT NULL REFERENCES heroes(hero_id) ON UPDATE CASCADE ON DELETE CASCADE,
    hero3_id int NOT NULL REFERENCES heroes(hero_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT teams_pk PRIMARY KEY (team_id)
);
CREATE TABLE matches
(
    match_id SERIAL,
    team1_id int NOT NULL REFERENCES teams(team_id) ON UPDATE CASCADE ON DELETE CASCADE,
    team2_id int NOT NULL REFERENCES teams(team_id) ON UPDATE CASCADE ON DELETE CASCADE,
    team1_scope int,
    team2_scope int,
    CONSTRAINT matches_pk PRIMARY KEY (match_id)
);


DROP TABLE updates;