-- Выбрать декартово произведение всех строк таблиц Degrees и Departments
SELECT Degrees.degree_title, Departments.department_title FROM Degrees, Departments;

-- Выбрать фамилии преподавателей и их email
SELECT Teachers.last_name, Auth.email FROM Teachers, Auth WHERE Teachers.id=Auth.teacher_id;
-- Выбрать фамилии преподавателей и их ученые степени
SELECT Teachers.last_name, Degrees.degree_title FROM Teachers, Degrees WHERE Teachers.academic_degree=Degrees.degree_id;
-- Выбрать id преподавателей и названия их администраторского статуса
SELECT Teachers.id, Statuses.status_title FROM Teachers, Statuses WHERE Teachers.status=Statuses.status_id;

-- Выбрать фамилии и email тех преподавателей, чей id>3
SELECT Teachers.last_name, Auth.email FROM Teachers, Auth WHERE Teachers.id=Auth.teacher_id AND Teachers.id>3;

-- Выбрать фамилию, имя, кафедру и email всех преподавателей
SELECT Teachers.last_name, Teachers.first_name, Departments.department_title, Auth.email FROM Teachers, Departments, Auth WHERE Teachers.id=Auth.teacher_id AND Teachers.department=Departments.department_id;


-- Выбрать декартово произведение всех строк таблиц Degrees и Departments
SELECT Degrees.degree_title, Departments.department_title FROM Degrees JOIN Departments;

-- Выбрать фамилии преподавателей и их email
SELECT Teachers.last_name, Auth.email FROM Teachers JOIN Auth ON Teachers.id=Auth.teacher_id;
-- Выбрать фамилии преподавателей и их ученые степени
SELECT Teachers.last_name, Degrees.degree_title FROM Teachers JOIN Degrees ON Teachers.academic_degree=Degrees.degree_id;
-- Выбрать id преподавателей и названия их администраторского статуса
SELECT Teachers.id, Statuses.status_title FROM Teachers JOIN Statuses ON Teachers.status=Statuses.status_id;

-- Выбрать фамилии и email тех преподавателей, чей id>3
SELECT Teachers.last_name, Auth.email FROM Teachers JOIN Auth ON Teachers.id=Auth.teacher_id AND Teachers.id>3;

-- Выбрать фамилию, имя, кафедру и email всех преподавателей
SELECT Teachers.last_name, Teachers.first_name, Departments.department_title, Auth.email FROM Teachers JOIN Departments JOIN Auth ON Teachers.id=Auth.teacher_id AND Teachers.department=Departments.department_id;


-- Выбрать все ученые степени и фамилии их носителей. Если носителя нет, то вместо фамилии указывается NULL
SELECT Degrees.degree_title, Teachers.last_name FROM Degrees LEFT OUTER JOIN Teachers ON Degrees.degree_id=Teachers.academic_degree;
-- Выбрать фамилии всех преподавателей всех кафедр и названия кафедр. Если на кафедре нет преподавателей, то вместо фамилии указывается NULL
SELECT Teachers.last_name, Departments.department_title FROM Teachers RIGHT OUTER JOIN Departments ON Teachers.department=Departments.department_id;

-- Выбрать id всех преподавателей, чей суммарный рейтинг в таблице ОП больше, чем суммарный рейтинг преподавателя с id=4
SELECT Needed.teacher_id FROM OP_table Needed JOIN OP_table Given ON Needed.op1+Needed.op2+Needed.op3+Needed.op4+Needed.op5 >= Given.op1+Given.op2+Given.op3+Given.op4+Given.op5 AND Given.teacher_id=4 AND Needed.teacher_id<>4;
