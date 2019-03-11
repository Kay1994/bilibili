SELECT 0;
SELECT 0;
WITH ActiveStudents(StudentRegistrationId) AS (SELECT srd.StudentRegistrationId FROM StudentRegistrationsToDegrees srd INNER JOIN Degrees d ON (srd.DegreeId = d.DegreeId) LEFT JOIN Info i ON (i.StudentRegistrationId = srd.StudentRegistrationId) WHERE i.ObtainedECTS < d.TotalECTS OR i.ObtainedECTS is null), ActiveStudentsByG(DegreeId, Gender, nr) AS (SELECT srd.DegreeId, s.Gender, COUNT(srd.StudentId) FROM StudentRegistrationsToDegrees srd, Students s, ActiveStudents acts WHERE srd.StudentId = s.StudentId AND acts.StudentRegistrationId = srd.StudentRegistrationId GROUP BY srd.DegreeId, s.Gender), TotalActiveStudents(DegreeId, nr) AS (SELECT asbg.DegreeId, SUM(nr) FROM ActiveStudentsByG asbg GROUP BY asbg.DegreeId) SELECT tas.DegreeId, asbg.nr/(tas.nr*1.0) AS percentage FROM ActiveStudentsByG asbg,TotalActiveStudents tas WHERE asbg.Gender = 'F' AND asbg.DegreeId = tas.DegreeId ORDER BY tas.DegreeId;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;