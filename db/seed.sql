INSERT INTO projects (title, description, tech_stack, start_date, end_date) VALUES
(
    'AI RAG Systems',
    'Built RAG pipelines with vector DBs and retrieval optimization.',
    ARRAY['Python', 'Pinecone', 'AI'],
    '2023-04-01',
    NULL
),
(
    'Fullstack Applications',
    'End-to-end client systems including frontend and backend.',
    ARRAY['React', 'TypeScript', 'Node.js'],
    '2023-04-01',
    NULL
),
(
    'Automation Workflows',
    'Lead gen and content automation using n8n.',
    ARRAY['n8n', 'Automation'],
    '2023-04-01',
    NULL
),
(
    'Visualization Platform',
    'Graphs, maps, and UX-heavy frontend work.',
    ARRAY['React', 'TypeScript'],
    '2021-12-01',
    '2022-12-01'
);


INSERT INTO experience (company, role, description, start_date, end_date) VALUES
(
    'AI Simple Flow',
    'Fullstack & AI Engineer',
    'AI model evaluation, RAG systems, fullstack apps, automation workflows.',
    '2023-04-01',
    NULL
),
(
    'Ellipsis Drive',
    'Front-End Developer',
    'Built spatial maps, visualizations, invoicing systems.',
    '2021-12-01',
    '2022-12-01'
),
(
    'Polar',
    'Web Developer',
    'Reusable components and responsive design.',
    '2021-01-01',
    '2021-09-01'
),
(
    'Freelance (Haifa)',
    'Web Developer',
    'Bloomreach CMS + React features.',
    '2020-01-01',
    '2020-12-01'
),
(
    'Startup (Herzliya)',
    'Front-End Developer',
    'Customer management platform with testing.',
    '2019-01-01',
    '2020-01-01'
);

INSERT INTO education (institution, degree, field, start_date, end_date) VALUES
(
    'Tel Aviv University',
    'BA',
    'Psychology',
    '2016-01-01',
    '2018-01-01'
),
(
    'Ort Braude College',
    'BSc',
    'Software Engineering',
    '2010-01-01',
    '2015-01-01'
);