DECLARE

   CURSOR c1 is
      SELECT ename, empno, sal FROM emp2
         ORDER BY sal DESC;   -- start with highest paid employee
 
BEGIN

  FOR info in c1 LOOP
     DBMS_OUTPUT.PUT_LINE('employee name= '|| info.ename ||', employee no= '||
info.empno ||', salary= '|| info.sal);
   END LOOP;
END;
/