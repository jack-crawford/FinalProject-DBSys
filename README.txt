READ ME 


To Instantiate The Database:
Import the .sql file included in this repository. 

To create a new missive:
INSERT INTO missives (content, author) VALUES ('Missive Value', 'Author Name');
Retrieve the ID for that missive row. and insert the scores:
INSERT INTO missive_score_ref (missive_id, score_id, value) VALUES ('missive_id', 1, 'score_value');";
INSERT INTO missive_score_ref (missive_id, score_id, value) VALUES ('missive_id', 2, 'score_value');";
INSERT INTO missive_score_ref (missive_id, score_id, value) VALUES ('missive_id', 3, 'score_value');";
INSERT INTO missive_score_ref (missive_id, score_id, value) VALUES ('missive_id', 4, 'score_value');";
Do the same for affinities if necessary.

To get missives:
 SELECT * FROM missives ORDER BY missive_id DESC;

 After sending a notification:
 INSERT INTO past_missives_by_user (user_id, missive_id) VALUES ('user_id', 'missive_id');

To create a user account:
INSERT INTO users (email, goog_token, push_token, first, last) VALUES ('$email','$googleID', '$pushToken', '$firstname', '$lastname');

To get users:
SELECT * FROM users;