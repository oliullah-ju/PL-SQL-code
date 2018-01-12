DECLARE 
 CURSOR updated_sal is 
	SELECT empno,sal FROM emp2; 
pre_sal number; 
BEGIN 
 FOR emp_rec IN updated_sal LOOP 
   pre_sal := emp_rec.sal; 
   emp_salary_increase(emp_rec.empno, emp_rec.sal); 
     dbms_output.put_line('The salary of ' || emp_rec.empno || 
             ' increased from '|| pre_sal || ' to '||emp_rec.sal);
END LOOP; 
END;
/
