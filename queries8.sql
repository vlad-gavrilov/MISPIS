-- Создаем представление Users, содержащее следующую информацию о пользователях: фамилия, имя, email, пароль
CREATE VIEW Users
AS SELECT last_name, first_name, email, password
FROM Teachers INNER JOIN Auth
ON Teachers.id=Auth.teacher_id;

-- Выводим содержимое представления
SELECT * FROM Users;

-- Создаем представление, содержащее суммарные значения по всем типам показателей активности преподавателей
CREATE VIEW Summary
AS
SELECT
OP_table.teacher_id,
nd1 AS NDsum,
np1+np2+np3+np4+np5+np6+np7+np8+np9 AS NPsum,
od1+od2+od3+od4+od5+od6+od7+od8+od9+od10 AS ODsum,
op1+op2+op3+op4+op5 AS OPsum,
r1+r2+r3 AS Rsum
FROM
ND_table
INNER JOIN NP_table ON ND_table.teacher_id=NP_table.teacher_id
INNER JOIN OD_table ON ND_table.teacher_id=OD_table.teacher_id
INNER JOIN OP_table ON ND_table.teacher_id=OP_table.teacher_id
INNER JOIN R_table  ON ND_table.teacher_id=R_table.teacher_id;

-- Выбираем фамилию и имя каждого преподавателя, а также суммарные показатели его активностей и общий суммарный показатель
SELECT Teachers.last_name, Teachers.first_name, NDsum, NPsum, ODsum, OPsum, Rsum, NDsum+NPsum+ODsum+OPsum+Rsum AS sum
FROM Summary INNER JOIN Teachers
ON Summary.teacher_id=Teachers.id
ORDER BY sum;
