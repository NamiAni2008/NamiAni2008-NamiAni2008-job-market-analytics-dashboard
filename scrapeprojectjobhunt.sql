CREATE DATABASE jobs_data;
USE jobs_data;

CREATE TABLE jobs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    company VARCHAR(255),
    location VARCHAR(255),
    experience VARCHAR(100),
    skills TEXT,
    posted_date VARCHAR(50)
);
SELECT COUNT(*) FROM jobs;
SELECT title, company, location, posted_date FROM jobs LIMIT 10;
SELECT title, COUNT(*) AS total_jobs
FROM jobs
GROUP BY title
ORDER BY total_jobs DESC;
SELECT company, COUNT(*) AS total_jobs
FROM jobs
GROUP BY company
ORDER BY total_jobs DESC
LIMIT 10;
SELECT location, COUNT(*) AS total_jobs
FROM jobs
GROUP BY company
ORDER BY total_jobs DESC;
SELECT skills, COUNT(*) AS freq
FROM jobs
GROUP BY skills
ORDER BY freq DESC
LIMIT 10;
select * from jobs;
SELECT company, COUNT(*) AS total_jobs
FROM jobs
GROUP BY company
ORDER BY total_jobs DESC;
SELECT * FROM jobs
INTO OUTFILE 'f:/python/jobs_data.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
SELECT * FROM jobs
INTO OUTFILE 'C:/Users/Namitha/Desktop/jobs_data.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
SELECT * FROM jobs
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/jobs_data.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
SELECT 'id','title','company','location','experience','skills','posted_date'
UNION ALL
SELECT id, title, company, location, experience, skills, posted_date
FROM jobs
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/jobs_data_with_header.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
