CREATE OR REPLACE PROCEDURE emp_salary_increase
(emp_id IN emp2.empno%type, salary_inc IN OUT emp2.sal%type) 
IS tmp_sal number; 
BEGIN 
  SELECT sal 
  INTO tmp_sal 
  FROM emp2
  WHERE empno = emp_id; 
  IF tmp_sal between 1000 and 2000 THEN 
     salary_inc := tmp_sal * 1.2; 
  ELSIF tmp_sal between 2000 and 3000 THEN 
    salary_inc := tmp_sal * 1.3; 
  ELSIF tmp_sal > 3000 THEN
  salary_inc := tmp_sal * 1.4;
  ELSE
    salary_inc := tmp_sal; 
  END IF; 
END;
 /