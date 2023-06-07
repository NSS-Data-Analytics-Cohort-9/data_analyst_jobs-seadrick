--1.	How many rows are in the data_analyst_jobs table?
select * from data_analyst_jobs;
--2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT * FROM data_analyst_jobs
LIMIT 10;
--How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT * FROM data_analyst_jobs;


SELECT COUNT(*) AS tn_count
FROM data_analyst_jobs
WHERE location = 'TN';
--TN COUNT 21

SELECT * FROM data_analyst_jobs;


SELECT COUNT (*) as ky_tn_count
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY');
--tn/ky count: 27


--4.	How many postings in Tennessee have a star rating above 4?
SELECT * FROM data_analyst_jobs;

SELECT *
FROM data_analyst_jobs
WHERE location = 'TN'
	AND star_rating > 4;
	

--5.	How many postings in the dataset have a review count between 500 and 1000?
SELECT * FROM data_analyst_jobs;

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;


--6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?

SELECT * FROM data_analyst_jobs;

SELECT location, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL AND star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;


--7.	Select unique job titles from the data_analyst_jobs table. How many are there?

SELECT * FROM data_analyst_jobs;

SELECT DISTINCT(title)
FROM data_analyst_jobs;

--8.	How many unique job titles are there for California companies?
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE location = 'CA';

--9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY company




 




