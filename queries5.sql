-- Выбрать все названия должностей, у которых id в диапазоне (3, 7)
SELECT position_title FROM Positions WHERE position_id>3 AND position_id<7;
-- Выбрать фамилии, имена и отчества всех преподавателей, которые не являются администраторами
SELECT last_name, first_name, patronymic FROM Teachers WHERE status=0;
-- Выбрать все типы администраторских должностей, кроме администраторов кафедр
SELECT status_title FROM Statuses WHERE status_id<>1;

-- Выбрать фамилии и имена всех преподавателей, которые являются профессорами и администраторами
SELECT last_name, first_name FROM Teachers WHERE position=5 AND status>0;
-- Выбрать фамилии и имена всех преподавателей, отчество которых "Артёмович" или которые являются глобальными администраторами
SELECT last_name, first_name FROM Teachers WHERE patronymic='Артёмович' OR status=2;
-- Выбрать фамилии и имена всех преподавателей, у которых коэффициент не равен 2
SELECT last_name, first_name FROM Teachers WHERE NOT coefficient=2;

-- Выбрать фамилии тех преподавателей, у которых id больше 2 и не равен 4 и, при этом, коэффициент отличен от 1
SELECT last_name FROM Teachers WHERE id>2 AND id<>4 AND NOT coefficient=1;

-- Выбрать id всех преподавателей, у которых сумма коэффициентов ОП больше 35
SELECT teacher_id FROM OP_table WHERE op1+op2+op3+op4+op5>35;

-- Выбрать фамилии всех преподавателей, чей id 1, 3 или 5
SELECT last_name FROM Teachers WHERE id IN (1, 3, 5);
-- Выбрать имена всех преподавателей, чье отчество либо "Артёмович", либо "Сергеевич"
SELECT first_name FROM Teachers WHERE patronymic IN ('Артёмович', 'Сергеевич');

-- Выбрать фамилии всех преподавателей, чье имя в диапазоне от А до Л
 SELECT last_name FROM Teachers WHERE first_name BETWEEN 'А' AND 'Л';
-- Выбрать фамилии всех преподавателей, чей id в диапазоне [2, 4]
SELECT last_name FROM Teachers WHERE id BETWEEN 2 AND 4;

-- Выбрать фамилии всех преподавателей, чье имя содержит букву "а", но не на последней позции
SELECT last_name FROM Teachers WHERE first_name LIKE '%а_%';
-- Выбрать id всех факультетов, названия которых начинаются на "инфо"
SELECT department_id FROM Departments WHERE department_title LIKE 'инфо%';

-- Вывести id всех преподавателей, у кого хеш пароля не является NULL
SELECT teacher_id FROM Auth WHERE password IS NOT NULL;
