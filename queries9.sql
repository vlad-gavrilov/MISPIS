-- Сохраняем в переменную @var email преподавателя с id=4
SET @var:=(SELECT email FROM Auth WHERE teacher_id=4);


-- Если показатель np5 больше 3, то вывести строку "Хороший", иначе - "Плохой"
SELECT IF(
  (SELECT np5 FROM NP_table WHERE teacher_id=2)>3,
  'Хороший',
  'Плохой');


-- Выбрать все из Auth
DELIMITER ##
CREATE PROCEDURE SelectFromAuth()
BEGIN
    SELECT * FROM Auth;
END##
DELIMITER ;

CALL SelectFromAuth();


-- Выбрать фамилии и email тех преподавателей, чей id>2
DELIMITER ##
CREATE PROCEDURE SelectIdGreaterThan2(number INT)
BEGIN
  SELECT Teachers.last_name, Auth.email FROM Teachers, Auth WHERE Teachers.id=Auth.teacher_id AND Teachers.id>number;
END##
DELIMITER ;
CALL SelectIdGreaterThan2(4);

-- Функция сложения двух целых чисел
DELIMITER ##
CREATE FUNCTION summa(
    a INT,
    b INT
)
RETURNS INT
BEGIN
    DECLARE result INT;
    SET result=a+b;
    RETURN (result);
END##
DELIMITER ;

SELECT summa(45, -382);

-- Сумма всех показателей в таблице ОД
DELIMITER ##
CREATE FUNCTION ODsum(
    od1 INT,
    od2 INT,
    od3 INT,
    od4 INT,
    od5 INT,
    od6 INT,
    od7 INT,
    od8 INT,
    od9 INT,
    od10 INT
)
RETURNS INT
BEGIN
    DECLARE result INT;
    SET result=od1+od2+od3+od4+od5+od6+od7+od8+od9+od10;
    RETURN (result);
END##
DELIMITER ;

SELECT *, ODsum(od1, od2, od3, od4, od5, od6, od7, od8, od9, od10) AS ODsum FROM OD_table;
