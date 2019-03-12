SELECT 0;
SELECT 0;
WITH ActiveStudents(StudentRegistrationId) AS (SELECT StudentRegistrationsToDegrees.StudentRegistrationId FROM StudentRegistrationsToDegrees INNER JOIN Degrees ON (StudentRegistrationsToDegrees.DegreeId = Degrees.DegreeId) LEFT JOIN Info ON (Info.StudentRegistrationId = StudentRegistrationsToDegrees.StudentRegistrationId) WHERE Info.totalects < Degrees.TotalECTS OR Info.totalects IS NULL), ActiveStudentsByG(DegreeId, Gender, nr) AS (SELECT StudentRegistrationsToDegrees.DegreeId, Students.Gender, COUNT(StudentRegistrationsToDegrees.StudentId) FROM StudentRegistrationsToDegrees, Students, ActiveStudents  WHERE StudentRegistrationsToDegrees.StudentId = Students.StudentId AND ActiveStudents.StudentRegistrationId = StudentRegistrationsToDegrees.StudentRegistrationId GROUP BY StudentRegistrationsToDegrees.DegreeId, Students.Gender), TotalActiveStudents(DegreeId, nr) AS (SELECT ActiveStudentsByG.DegreeId, SUM(nr) FROM ActiveStudentsByG  GROUP BY ActiveStudentsByG.DegreeId) SELECT TotalActiveStudents.DegreeId, ActiveStudentsByG.nr/(TotalActiveStudents.nr*1.0) AS percentage FROM ActiveStudentsByG ,TotalActiveStudents  WHERE ActiveStudentsByG.Gender = 'F' AND ActiveStudentsByG.DegreeId = TotalActiveStudents.DegreeId ORDER BY TotalActiveStudents.DegreeId;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;