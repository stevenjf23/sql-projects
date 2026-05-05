DELIMITER $$
CREATE TRIGGER RegistrarNuevoEmpleado
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN
INSERT INTO LogEmpleados (empleado_id, fecha_registro) VALUES (NEW.empleado_id, NOW());
END$$
DELIMITER ;

INSERT INTO Empleados (nombre, apellido, email) VALUES ('Juan', 'Perez', 'juan.perez@example.com');

SELECT * FROM LogEmpleados;
