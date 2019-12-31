-- Калькулятор
DELIMITER ##
CREATE FUNCTION Calculator(
  Opd1 bigint,
  Opd2 bigint,
  Oprt char(1)
)
RETURNS bigint
BEGIN
  DECLARE Result bigint;
  SET Result=
  CASE Oprt
    WHEN "+" THEN Opd1 + Opd2
    WHEN "-" THEN Opd1 - Opd2
    WHEN "*" THEN Opd1 * Opd2
    WHEN "/" THEN Opd1 / Opd2
    ELSE 0
  END;
  Return (Result);
END##
DELIMITER ;

-- Вызов функции "Калькулятор"
SELECT Calculator(523, 431, '-');

-- Возведение числа в степень
DELIMITER ##
CREATE FUNCTION Power(
  numb bigint,
  pwr bigint
)
RETURNS bigint
BEGIN
  DECLARE result bigint;
  SET result=POW(numb, pwr);
  Return (result);
END##
DELIMITER ;

-- Вызов функции возведения в степень
SELECT Power(25, 20);

-- Вычисление длины гипотенузы по значениям длин катетов прямоугольного треугольника
DELIMITER ##
CREATE FUNCTION Pythagoras(
  leg1 bigint,
  leg2 bigint
)
RETURNS float
BEGIN
  DECLARE hypotenuse float;
  SET hypotenuse=POW(leg1, 2) + POW(leg2, 2);
  SET hypotenuse=SQRT(hypotenuse);
  Return (hypotenuse);
END##
DELIMITER ;

-- Вычисление длины гипотенузы т.н. египетского треугольника
SELECT Pythagoras(3, 4);

-- Проверка на равенство двух операндов
DELIMITER ##
CREATE FUNCTION IsEqual(
  oper1 bigint,
  oper2 bigint
)
RETURNS boolean
BEGIN
  DECLARE result boolean;
  SET result=IF(oper1=oper2, 1, 0);
  Return (result);
END##
DELIMITER ;

-- Проверка на равенство: операнды не равны
SELECT IsEqual(76, 4);
-- Проверка на равенство: операнды равны
SELECT IsEqual(29, 29);
