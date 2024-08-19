USE practice_sql;

-- 조건문 
-- CASE : 특정 값을 비교하여 일치하는 작업을 수행
-- CASE 컬럼 
--  WHEN 비교값1 THEN 비교값1과 컬럼이 일치할때 결과
--  WHEN 비교값2 THEN 비교값2과 컬럼이 일치할때 결과
--  ELSE 비교값1과 비교값2가 모두 컬럼과 일치하지 않을때 결과 
-- END

-- CASE
--  WHEN 조건1 THEN 조건1이 참일때 결과 
--  WHEN 조건2 THEN 조건2가 참일때 결과
-- 	ELSE 조건1과 조건2가 모두 거짓일때 결과
-- END

SELECT date, (
	CASE
		WHEN amount > 100000 THEN '고액'
		ELSE '소액'
	END
) '금액'
FROM sale;

-- IF 함수 : 첫번째 매개변수로 전달한 표현식에 따라 결과를 반환하는 함수
-- IF (조건, 참일때결과, 거짓일때결과)
SELECT date, IF(amount > 100000, '고액', '소액') '금액'
FROM sale;

-- IFNULL 함수 : 첫번째 매개변수의 값이 NULL인지에 따라 결과를 반환하는 함수
-- IFNULL (값, 값이 null일때 반환할 결과)
SELECT 사번, 사원이름, IFNULL (부서명, '없음') '부서명'
FROM employee_view; 

-- 문자열 함수 : 문자열 조작을 도와주는 함수들 
-- LENGTH (문자열) : 문자열의 바이트수를 반환
SELECT LENGTH(name) / 3 from employee;

-- CONCAT(문자열, ...) : 매개변수로 전달받은 문자열들을 결합
-- 매개변수 중 하나라도 null이면 null을 반환
SELECT CONCAT(사원이름, 부서명) '이름 및 부서'  FROM employee_view;

-- LEFT(문자열), RIGHT(문자열) : 문자열을 왼쪽, 오른쪽에서부터 추출 
SELECT LEFT(사원이름, 2), RIGHT(사원이름, 2) FROM employee_view;

-- REPLACE(기준문자열, 찾을문자열, 바꿀문자열) : 특정 문자열을 지정한 문자열로 변경하는 함수
SELECT REPLACE(사원이름, '길동', '순자') FROM employee_view;



















