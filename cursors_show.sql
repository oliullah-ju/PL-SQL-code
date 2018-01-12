DECLARE
e_name emp2.ename%TYPE;
e_no emp2.empno%TYPE;
e_sal emp2.sal%TYPE;
   CURSOR c1 is
      SELECT ename, empno, sal FROM emp2
         ORDER BY sal DESC;   -- start with highest paid employee
 
BEGIN
open c1;
  LOOP
	fetch c1 into e_name,e_no,e_sal;
exit when c1%NOTFOUND; 
     DBMS_OUTPUT.PUT_LINE('employee name= '|| e_name ||', employee no= '||
e_no ||', salary= '|| e_sal);
   END LOOP;
close c1;
END;
/