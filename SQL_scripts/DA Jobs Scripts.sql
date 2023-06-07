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



