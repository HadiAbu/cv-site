INSERT INTO projects (title, description, tech_stack)
VALUES
('CV Website', 'Personal CV platform', ARRAY['Python', 'Postgres']),
('API Server', 'Custom backend without frameworks', ARRAY['Python']);

INSERT INTO experience (company, role, description)
VALUES
('Company A', 'Backend Developer', 'Worked on APIs'),
('Company B', 'Engineer', 'Built systems');

INSERT INTO education (institution, degree, field)
VALUES
('University X', 'BSc', 'Computer Science');