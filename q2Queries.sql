SELECT 0;
SELECT 0;
SELECT Degrees.DegreeId as degreeid, (cast(SUM(CASE WHEN Students.Gender = 'F' THEN 1 ELSE 0 END) as float) / COUNT(Students.Gender)) as percentage FROM Students INNER JOIN StudentRegistrationsToDegrees on (Students.StudentId = StudentRegistrationsToDegrees.StudentId) INNER JOIN Degrees on (StudentRegistrationsToDegrees.DegreeId = Degrees.DegreeId) GROUP BY Degrees.DegreeId;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;