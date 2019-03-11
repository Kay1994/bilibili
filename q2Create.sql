CREATE MATERIALIZED VIEW Info AS (SELECT cr.StudentRegistrationId, SUM(cr.Grade * c.ECTS)/(SUM(ECTS)*1.0) AS GPA, SUM(ECTS) AS ObtainedECTS FROM CourseRegistrations cr, CourseOffers co, Courses c WHERE cr.CourseOfferId = co.CourseOfferId AND co.courseId = c.courseId AND cr.Grade >= 5 GROUP BY cr.StudentRegistrationId);

