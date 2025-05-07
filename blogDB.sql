//4 tables; Users, Topics, Articles, and Comments as required.
   //grabbed from gfulenwi/BlogDatabase.
   //connection line : $mysqli = new mysqli("127.0.01","bloguser","blogpass","blogbd");

DROP DATABASE IF EXISTS blogdb;
CREATE DATABASE blogdb;

use blogdb;
drop user if exists 'bloguser'@'localhost';

CREATE USER IF NOT EXISTS 'bloguser'@'localhost' identified by 'blogpass';
grant all on blogdb.* to 'bloguser'@'localhost';

create table users(
   userID int AUTO_INCREMENT,
   username varchar(30) not null, index(username),
   lastname varchar(50),
   firstname varchar(30),
   password varchar(30),
   email varchar(255),
   role varchar(30),
   lastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   primary key(userID)
)engine=innodb;

create table topics(
   topID int AUTO_INCREMENT,
   name varchar(50),
   description varchar(255),
   lastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   primary key(topID)
)engine=innodb;

create table articles(
   artID int AUTO_INCREMENT,
   topID int; //look at this
   authorID int NOT NULL, index(authorID),
   catID int NOT NULL, index(catID),
   title varchar(255),
   image varchar(255),
   content text,
   lastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   primary key(artID)
)engine=innodb;

create table comments(
   comID int AUTO_INCREMENT,
   authorID int NOT NULL, index(authorID),
   artID int NOT NULL, index(artID),
   content varchar(255),
   lastModified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   primary key(comID)
)engine=innodb;
​
$articles = [
    [
        'article_id' => 1,
        'topic_id' => 2,
        'author' => 'Ethan Thomas',
        'title' => 'The Future of AI in Education',
        'created_at' => '2025-05-07',
        'content' => 'Artificial Intelligence is revolutionizing education by enabling personalized learning experiences, automating administrative tasks, and providing deep insights into student progress...'
    ],
    [
        'article_id' => 2,
        'topic_id' => 4,
        'author' => 'John Doe',
        'title' => 'Climate Change and Its Global Impact',
        'created_at' => '2025-05-07',
        'content' => 'Climate change remains one of the most pressing global issues, affecting ecosystems, economies, and societies worldwide. With increasing temperatures and rising sea levels...'
    ],
    [
        'article_id' => 3,
        'topic_id' => 7,
        'author' => 'Jane Smith',
        'title' => 'The Role of Persuasion in Public Speaking',
        'created_at' => '2025-05-07',
        'content' => 'Effective public speaking relies on persuasive techniques such as emotional appeals, logical arguments, and storytelling. Understanding how to craft a compelling speech...'
    ]
];
