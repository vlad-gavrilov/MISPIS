-- Количество различный ученых степеней
SELECT COUNT(*) FROM Degrees;

-- Максимальная сумма из сумм коэффициентов таблицы ОД
SELECT MAX(od1+od2+od3+od4+od5+od6+od7+od8+od9+od10) FROM OD_table;

-- Вывести названия кафедр прописными буквами
SELECT UPPER(department_title) FROM Departments;

-- Вывести текущую дату
SELECT CURRENT_TIMESTAMP();

-- Выбрать количество преподавателей в каждой из кафедр
SELECT department, COUNT(*) FROM Teachers GROUP BY department;

-- Выбрать количество преподавателей с одинаковыми учеными званиями на каждой кафедре
SELECT department, academic_title, COUNT(*) FROM Teachers GROUP BY department, academic_title;

-- Выбрать тип администраторов, количество которых меньше 5
SELECT status, COUNT(*) FROM Teachers GROUP BY status HAVING COUNT(*)<5;

-- Вывести минимальное из всех значений np3 и максимальное из np6 при условии, что максимальное значение np8 больше 6
SELECT MIN(np3), MAX(np6) FROM NP_table HAVING MAX(np8)>6;

-- Выбрать все названия кафедр, отсортированные по названию в обратном алфавитном порядке
SELECT * FROM Departments ORDER BY department_title DESC;

-- Вставить в таблицу кафедр новую кафедру с названием "астрономии"
INSERT INTO Departments(department_title) VALUES ('астрономии');

-- Вставить в таблицу кафедр новую кафедру с названием, совпадающим с фамилией преподавателя под номером 3
INSERT INTO Departments(department_title) VALUES ((SELECT last_name FROM Teachers WHERE id=3));

-- Изменить название кафедры с заданным id на название "геологии"
UPDATE Departments SET department_title='геологии' WHERE department_id=8;

-- Изменить название кафедры с заданным id на имя преподавателя под номером 5
UPDATE Departments SET department_title=(SELECT first_name FROM Teachers WHERE id=5) WHERE department_id=9;

-- Удалить кафедру с заданным id
DELETE FROM Departments WHERE department_id=8;
DELETE FROM Departments WHERE department_id=9;
