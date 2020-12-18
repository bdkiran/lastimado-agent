CREATE TABLE users (
    user_id serial PRIMARY KEY,
    firstname text,
    lastname text,
    password text NOT NULL,
    email text NOT NULL
);

CREATE TABLE qThreads (
    qThread_id serial PRIMARY KEY,
    slug varchar(256) NOT NULL UNIQUE,
    user_id integer REFERENCES users (user_id),
    title varchar(256) NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE qPOSTs (
    qPost_id serial PRIMARY KEY,
    qThread_id integer NOT NULL REFERENCES qThreads (qThread_id),
    user_id integer NOT NULL REFERENCES users (user_id),
    body text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now()
);

