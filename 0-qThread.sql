SELECT * FROM qThreads;

SELECT * FROM qThreads WHERE qThread_id=1;

INSERT INTO qThreads (user_id, slug, title) VALUES
    (1, 'How-Do-I-Make-Money', 'How Do I Make Money?'),
    (1, 'What-Do-I-Do-When-I-Got-Hit-By-a-Car', 'What Do I Do When I Got Hit By a Car?'),
    (2, 'What-Happens-When-I-Go-to-the-Chiropactor', 'What Happens When I Go to the Chiropactor?');

DELETE FROM qThreads WHERE qThread_id = 1;

/*The only thing that should be updatable is the */
UPDATE qThreads SET title='Hi or something' WHERE qThread_id=1;