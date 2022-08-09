CREATE DATABASE Intagram_Clone_DB;
USE Intagram_Clone_DB;

CREATE TABLE users (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nickname VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE u_follows (
    user_id INT NOT NULL,
    followed INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW (),
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (user_followed)
        REFERENCES users (id),
    PRIMARY KEY (user_id , followed)
);
CREATE TABLE user_photos (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
    PRIMARY KEY (user_id , photo_id)
);

CREATE TABLE photos (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    description VARCHAR(2500) DEFAULT '',
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE hashtags_in_photos (
    photo_id INT NOT NULL,
    hashtag_id INT NOT NULL,
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
    FOREIGN KEY (hashtag_id)
        REFERENCES hashtags (id),
    PRIMARY KEY (photo_id , hashtag_id)
);

CREATE TABLE hashtags (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    tag VARCHAR(250) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE comments_on_photos (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW (),
    photo_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
    PRIMARY KEY (id , user_id , photo_id)
);

CREATE TABLE likes (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW(),
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
	PRIMARY KEY(user_id,photo_id)        
);

INSERT INTO users(username) VALUES ('Blue')