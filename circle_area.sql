CREATE FUNCTION circle_area (p_radius IN NUMBER) RETURN NUMBER AS
v_pi NUMBER := 3.1415926;
v_area NUMBER;

BEGIN
v_area := v_pi * POWER(p_radius, 2);
RETURN v_area;

END circle_area;
/