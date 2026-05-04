ALTER TABLE Departamentos ADD COLUMN email_jefe VARCHAR(255);

ALTER TABLE Departamentos MODIFY COLUMN email_jefe VARCHAR(100);

ALTER TABLE Departamentos DROP COLUMN email_jefe;
