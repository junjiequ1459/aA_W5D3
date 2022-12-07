PRAGMA foreign_keys = ON;


CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author TEXT NOT NULL
);

CREATE TABLE question_follows (
    user_id INTEGER PRIMARY KEY,
    question_id INTEGER PRIMARY KEY
);


CREATE TABLE replies ( 
    body TEXT NOT NULL,
    FOREIGN KEY (body) REFERENCES questions(id),
    FOREIGN KEY (body) REFERENCES replies(body),
    FOREIGN KEY (body) REFERENCES user(id)

);

CREATE TABLE question_likes (
    likes INTEGER NOT NULL,
    
    FOREIGN KEY (likes) REFERENCES users(id),
    FOREIGN KEY (likes) REFERENCES questions(id)
);

INSERT INTO
    users (fname, lname)
VALUES
    ('first', 'last');

INSERT INTO
    questions (title, body, author)
VALUES
    ('title', 'body', 'author');