/*
CUNY SPS DATA607 Assignment 2
Name: Chinedu Onyeka
Date: September 2nd, 2021
*/
CREATE DATABASE IF NOT EXISTS videos_rating;
USE videos_rating;
DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS reviewers;
 
#Create the Videos table
CREATE TABLE videos(
video_id INT(10) NOT NULL,
title VARCHAR(255) NOT NULL,

PRIMARY KEY(video_id)
);

#Create Reviewers table
CREATE TABLE reviewers(
reviewer_id INT(10) NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
title VARCHAR(255) NOT NULL REFERENCES videos(title) ON DELETE CASCADE,
rating VARCHAR(10)

);

#populate the videos table
INSERT INTO videos
VALUES
(1, 'Avengers'),
(2, 'Black Panther'),
(3, 'Something Borrowed'),
(4, 'Red'),
(5, 'Pure Haven'),
(6, 'Good Deed');

#populate the reviewers table
INSERT INTO reviewers
VALUES
(1, 'Ashe', 'Denis', 'Avengers', 5 ),
(1, 'Ashe', 'Denis', 'Black Panther', 4 ),
(1, 'Ashe', 'Denis', 'Something Borrowed', 5 ),
(1, 'Ashe', 'Denis', 'Red', 3 ),
(1, 'Ashe', 'Denis', 'Pure Haven', 1 ),
(1, 'Ashe', 'Denis', 'Good Deed', 5 ),
(2, 'Chinonye', 'Onyeka', 'Avengers', 5 ),
(2, 'Chinonye', 'Onyeka', 'Black Panther', 2 ),
(2, 'Chinonye', 'Onyeka', 'Something Borrowed', 4 ),
(2, 'Chinonye', 'Onyeka', 'Red', 5 ),
(2, 'Chinonye', 'Onyeka', 'Pure Haven', 4 ),
(2, 'Chinonye', 'Onyeka', 'Good Deed', 3 ),
(3, 'Kingsley', 'Obi', 'Avengers', 4 ),
(3, 'Kingsley', 'Obi','Black Panther', 4 ),
(3, 'Kingsley', 'Obi', 'Something Borrowed', 4 ),
(3, 'Kingsley', 'Obi', 'Red', 4 ),
(3, 'Kingsley', 'Obi', 'Pure Haven', 4 ),
(3, 'Kingsley', 'Obi', 'Good Deed', 4 ),
(4, 'Emmanuel', 'Nnamdi', 'Avengers', 5 ),
(4, 'Emmanuel', 'Nnamdi', 'Black Panther', 4 ),
(4, 'Emmanuel', 'Nnamdi', 'Something Borrowed', 4 ),
(4, 'Emmanuel', 'Nnamdi', 'Red', 3),
(4, 'Emmanuel', 'Nnamdi', 'Pure Haven', 5 ),
(4, 'Emmanuel', 'Nnamdi', 'Good Deed', 4 ),
(5, 'Richard', 'Ndubuisi', 'Avengers', 'NA' ),
(5, 'Richard', 'Ndubuisi', 'Black Panther', 3 ),
(5, 'Richard', 'Ndubuisi', 'Something Borrowed', 'NA' ),
(5, 'Richard', 'Ndubuisi', 'Red', 'NA' ),
(5, 'Richard', 'Ndubuisi',  'Pure Haven', 4 ),
(5, 'Richard', 'Ndubuisi', 'Good Deed', 3 );