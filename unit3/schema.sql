CREATE TABLE users(
  id int NOT NULL AUTO_INCREMENT,
  username varchar(15) NOT NULL,
  password varchar(32) NOT NULL,
  followers int DEFAULT 0,
  following int DEFAULT 0,
  tweets int DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE following(
  id int NOT NULL AUTO_INCREMENT,
  user1_id int REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  user2_id int REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  PRIMARY KEY (id)
);

CREATE TABLE tweets(
  id int NOT NULL AUTO_INCREMENT,
  username varchar(15) NOT NULL,
  user_id int REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  tweet varchar(140) NOT NULL,
  timestamp bigint(20) NOT NULL,
  PRIMARY KEY (id)
);
