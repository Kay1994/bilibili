CREATE MATERIALIZED VIEW Info (StudentRegistrationId,totalects) AS (SELECT CourseRegistrations.StudentRegistrationId, SUM(ECTS) AS totalects FROM CourseRegistrations, CourseOffers , Courses  WHERE CourseRegistrations.CourseOfferId = CourseOffers.CourseOfferId AND CourseOffers.courseId = Courses.courseId AND CourseRegistrations.Grade >= 5 GROUP BY CourseRegistrations.StudentRegistrationId);


