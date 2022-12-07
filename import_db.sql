PRAGMA foreign_keys = ON;


CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
)

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author TEXT NOT NULL
)

CREATE TABLE question_follows (
    user_id INTEGER PRIMARY KEY,
    author TEXT NOT NULL 
)


CREATE TABLE replies ( 
    reply TEXT NOT NULL,
    reply REFERENCES questions(id)
    reply REFERENCES replies(reply)
    reply REFERENCES user(id)
    )

CREATE TABLES question_likes (
    likes INTEGER NOT NULL,
    
    likes REFERENCES users(id)
    likes REFERENCES questions(id)
)