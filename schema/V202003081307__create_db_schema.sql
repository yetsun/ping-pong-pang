CREATE DATABASE pingpong;

CREATE TABLE pingpong.player (
  player_id INT(11) AUTO_INCREMENT
  `name` INT(11) NOT NULL,
  login_id VARCHAR(50) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  created_by VARCHAR(50) NOT NULL,
  created_at DATETIME(6) NOT NULL,
  modified_by VARCHAR(50) NOT NULL,
  modified_at DATETIME(6) NOT NULL,
  PRIMARY KEY (player_id)
);

CREATE TABLE pingpong.single_match (
  single_match_id INT(11) AUTO_INCREMENT,
  sets_format VARCHAR(20) NOT NULL COMMENT 'BEST_OF_5 or BEST_OF_7',
  referee VACHAR(50) NULL COMMENT 'Referee name',
  start_time DATETIME(6) NOT NULL,
  end_time DATETIME(6) NULL,
  created_by VARCHAR(50) NOT NULL,
  created_at DATETIME(6) NOT NULL,
  modified_by VARCHAR(50) NOT NULL,
  modified_at DATETIME(6) NOT NULL,
  PRIMARY KEY (single_match_id)
);

CREATE TABLE pingpong.single_game (
  single_game_id INT(11) AUTO_INCREMENT
  single_match_id INT(11) NOT NULL,
  seq SMALLINT NOT NULL COMMENT 'Sequence of the game in the match. Starts from 1. e.g. 1, 2, 3',
  sets_format VARCHAR(20) NOT NULL COMMENT 'BEST_OF_5 or BEST_OF_7',
  referee VACHAR(50) NULL COMMENT 'Referee name',
  start_time DATETIME(6) NOT NULL,
  end_time DATETIME(6) NULL,
  created_by VARCHAR(50) NOT NULL,
  created_at DATETIME(6) NOT NULL,
  modified_by VARCHAR(50) NOT NULL,
  modified_at DATETIME(6) NOT NULL,
  PRIMARY KEY (single_game_id)
);

CREATE TABLE pingpong.single_game_result (
  single_game_result_id INT(11) AUTO_INCREMENT
  single_game_id INT(11) NOT NULL,
  player_id INT(11) NOT NULL,
  score SMALLINT NOT NULL,
  win TINYINT NOT NULL,
  created_by VARCHAR(50) NOT NULL,
  created_at DATETIME(6) NOT NULL,
  modified_by VARCHAR(50) NOT NULL,
  modified_at DATETIME(6) NOT NULL,
  PRIMARY KEY (single_game_result_id)
);


CREATE TABLE pingpong.single_participation (
  single_participation_id INT(11) AUTO_INCREMENT
  single_match_id INT(11) NOT NULL,
  player_id INT(11) NOT NULL,
  created_by VARCHAR(50) NOT NULL,
  created_at DATETIME(6) NOT NULL,
  modified_by VARCHAR(50) NOT NULL,
  modified_at DATETIME(6) NOT NULL,
  PRIMARY KEY (single_participation_id)
);