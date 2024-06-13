use etl5;
show tables;
select* from health_care;
/*1. Retrieve the names of all patients in the 
database.*/
select name from health_care;
-- 2)List the unique medical conditions present in the dataset
select distinct `Medical Condition` from health_care;
/* 3. Find the total number of doctors in the healthcare system. */
select count(Doctor) from health_care;
/* 4. Retrieve the details of all female patients. */
SELECT * FROM health_care WHERE gender = 'female';
-- 5 what is the average age of patients in the database 
select avg(age) from health_care;
/*6. Identify the patients who have more than 
one medical condition.*/
select Name, count(`Medical Condition`) from health_care group by Name having count(`Medical Condition`) > 1;
/*7. List the names of all doctors.*/
select Doctor from health_care;
/*8.Identify the most common medical 
condition among patients.*/
select `medical condition` from health_care order by `Medical Condition` desc limit 1;
/* 9. Find the patients who are older than 60 years and have diabetes. */
select Name, `Medical Condition`, age from health_care where Age >59 and `Medical Condition`= 'Diabetes';
/* 10. Calculate the total revenue generated by the healthcare system. */
select sum(`Billing Amount`) from health_care;
/* 11. Find the doctor with the oldest patient. */
select Doctor, Name from health_care order by Age desc limit 1;
/* 12. Calculate the average duration of medical visits. */
select avg(datediff(`Date of Admission`,`Discharge Date`)) as Days from health_care;
/* 13. Give the names of patients whose name starts with A. */
select Name from health_care where Name like 'A%';
/* 14. How many male and female patients are there in dataset. */
select count(Gender) from health_care group by Gender;
/* 15. How many patients are normal. */
select count(`Test Results`) from health_care where `Test Results`='Normal';
/* 16. How many patients are abnormal or Inconclusive. */
select count(`Test Results`) from health_care where `Test Results`='Abnormal' or `Test Results`='Inconclusive';
/* 17. How many patients of blood group AB+ are there of age above 52. */
select count(`Blood Type`) from health_care where `Blood Type`='AB+' and Age>52;
/* 18. How many patients have paid the bill above 24890. */
select count(Name) from health_care where `Billing Amount` >24890;
/* 19. What are the names of patients having Asthma. */
select Name,`Medical Condition` from health_care where `Medical Condition`='Asthma';
/* 20. How many patients have cancer. */
select count(Name) from health_care where `Medical Condition`='Cancer';
/* 21. What are the names and blood groups of patients admitted to room no. 292. */
select Name, `Blood Type` , `Room Number` from health_care where `Room Number` = 292;
/* 22. How many males have Arthritis. */
select count(Name) from health_care where Gender='Male' and `Medical Condition` = 'Arthritis';
/* 23. How many patients were admitted to Harris and Sons hospital. */
select count(Name) from health_care where Hospital ='Harris and Sons';
/* 24. What are the names of patients whose Insurance Provider are Cigna. */
select Name,`Insurance Provider` from health_care where `Insurance Provider` ='Cigna';
/* 25. Name the Medical Condition having patients whose ages is greater than average age. */
select Name, Age, `Medical Condition` from health_care where Age > (select avg(Age) from health_care);
select * from health_care;









