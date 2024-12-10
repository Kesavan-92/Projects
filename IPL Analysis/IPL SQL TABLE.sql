CREATE TABLE ipl_matches_2008_2022
(
    id int8 PRIMARY KEY,
    city varchar(50),
    match_date date,
    season varchar(50),
    match_number varchar(50),
    team1 varchar(50),
    team2 varchar(50),
    venue varchar(100),
    toss_winner varchar(50),
    toss_decision varchar(50),
    superover varchar(50),
    winning_team varchar(50),
    won_by varchar(50),
    margin varchar(50),
    method varchar(50),
    player_of_match varchar(50),
    umpire1 varchar(50),
    umpire2 varchar(50)
)

select * from ipl_matches_2008_2022;

COPY ipl_matches_2008_2022 FROM 'D:\IPL Analysis\ipl_matches_2008_2022.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE ipl_ball_by_ball_2008_2022
(
    id int8 NOT NULL,
	innings int8,
	overs int8,
	ball_number int8,
	batter varchar(50),
	bowler varchar(50),
	non_striker varchar(50),
	extra_type varchar(50),
	batsman_run int8,
	extras_run int8,
	total_run int8,
	non_boundry int8,
	iswicket_delivery int8,
	player_out varchar(50),
	dismisal_kind varchar(50),
	fielders_involved varchar(50),
	batting_team varchar(50)
)

COPY ipl_ball_by_ball_2008_2022 FROM 'D:\IPL Analysis\\ipl_ball_by_ball_2008_2022.csv' DELIMITER ',' CSV HEADER;