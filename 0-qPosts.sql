/* Drop table and rebuild! */
SELECT * FROM qPosts;

SELECT * FROM qPosts WHERE qPost_id=1;

INSERT INTO qPosts (qThread_id, user_id, body) VALUES
    (1, 4, 'Theres so many things you can do.'),
    (1, 2, 'You can open up a resturant.'),
    (2, 3, 'Go see a doctor ASAP.'),
    (2, 4, 'Call your insurance right away.'),
    (3, 1, 'They will crack your back good.'),
    (3, 2, 'I got my back fixed there, you can too.');

DELETE FROM qPosts WHERE qPosts_id = 1;

UPDATE qPosts SET body='You can sell a bunch of money online' WHERE qPost_id = 1;

SELECT (qPosts.qPost_id, users.firstname, users.lastname, qPosts.body, qPosts.created_at) 
		FROM qPosts INNER JOIN users ON qPosts.user_id=users.user_id and qPosts.qThread_id=1;
 

SELECT * FROM qPosts;
SELECT * FROM users;