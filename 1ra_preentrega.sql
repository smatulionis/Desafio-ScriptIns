USE colegio;
CREATE TABLE alumnos(
id_alumno INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_alumno VARCHAR(40) NOT NULL,
email_alumno VARCHAR(20) NOT NULL,
direccion_alumno VARCHAR(40) NOT NULL);

CREATE TABLE notas(
id_nota INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_alumno INT NOT NULL,
primer_semestre DECIMAL(2,1) NOT NULL,
segundo_semestre DECIMAL(2,1) NOT NULL,
FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno));

CREATE TABLE materias(
id_materia INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_materia VARCHAR(30) NOT NULL,
horas_semestre INT NOT NULL,
dias_cursada VARCHAR(20));

CREATE TABLE cursos(
id_curso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_alumno INT NOT NULL,
id_materia INT NOT NULL,
id_profesor INT NOT NULL,
nombre_curso VARCHAR(10) NOT NULL,
FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
FOREIGN KEY (id_materia) REFERENCES materias(id_materia),
FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor));

CREATE TABLE profesores(
id_profesor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
telefono_profesor VARCHAR(10) NOT NULL,
nombre_profesor VARCHAR(40) NOT NULL,
email_profesor VARCHAR(20) NOT NULL);

CREATE TABLE examenes(
id_examen INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_materia INT NOT NULL,
tipo_examen VARCHAR(20) NOT NULL,
fecha_examen DATE,
FOREIGN KEY (id_materia) REFERENCES materias(id_materia));

