CREATE MATERIALIZED VIEW Info (StudentRegistrationId,gpa,totalects) AS (SELECT CourseRegistrations.StudentRegistrationId,SUM(CourseRegistrations.Grade * Courses.ECTS)/(SUM(Courses.ECTS)*1.0) AS gpa, SUM(ECTS) AS totalects FROM CourseRegistrations, CourseOffers , Courses  WHERE CourseRegistrations.CourseOfferId = CourseOffers.CourseOfferId AND CourseOffers.courseId = Courses.courseId AND CourseRegistrations.Grade >= 5 GROUP BY CourseRegistrations.StudentRegistrationId);


