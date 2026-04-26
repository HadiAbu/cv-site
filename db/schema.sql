DROP TABLE IF EXISTS projects;

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    tech_stack TEXT[],
    start_date DATE,
    end_date DATE
);

DROP TABLE IF EXISTS experience;

CREATE TABLE experience (
    id SERIAL PRIMARY KEY,
    company TEXT NOT NULL,
    role TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE
);

DROP TABLE IF EXISTS education;

CREATE TABLE education (
    id SERIAL PRIMARY KEY,
    institution TEXT NOT NULL,
    degree TEXT,
    field TEXT,
    start_date DATE,
    end_date DATE
);

INSERT INTO projects (title, description, tech_stack)
VALUES ('CV Website', 'Personal CV site', ARRAY['Python', 'Postgres']);