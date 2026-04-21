CREATE VIEW student_library_cafeteria AS SELECT  library.Students.student_name, cafeteria.student_food_subscription.food_subscribed FROM library.Students JOIN cafeteria.student_food_subscription ON library.Students.student_id = cafeteria.student_food_subscription.student_id;

INSERT INTO student_food_subscription VALUES
    -> (1, TRUE),
    -> (2, FALSE),
    -> (3, TRUE),
    -> (4, TRUE),
    -> (5, FALSE);


CREATE VIEW student_library_cafeteria AS SELECT  library.Students.student_name, cafeteria.student_food_subscription.food_subscribed FROM library.Students JOIN cafeteria.student_food_subscription ON library.Students.student_id = cafeteria.student_food_subscription.student_id;
