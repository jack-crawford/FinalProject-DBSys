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

To get tailored content: 
SELECT DISTINCT(a.missive_id), missives.content, missives.author, a.score_id as a_score, a.value as a_value, 
b.score_id as b_score, b.value as b_value, c.score_id as c_score, c.value as c_value, d.score_id as d_score, 
d.value as d_value from `missive_score_ref` a join missive_score_ref b on a.missive_id = b.missive_id join missive_score_ref c 
on c.missive_id = a.missive_id join missive_score_ref d on d.missive_id = a.missive_id join missives on missives.missive_id = a.missive_id 
WHERE a.score_id = 1 AND a.value < 50 AND b.score_id = 2 AND b.value > 50 AND c.score_id = 3 AND c.value < 50 AND d.score_id = 4 AND d.value < 50;