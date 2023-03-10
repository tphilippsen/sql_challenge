DROP TABLE TITLES
CREATE TABLE TITLES (
	TITLE_ID VARCHAR PRIMARY KEY,
	TITLE VARCHAR (50) NOT NULL);

DROP TABLE EMPLOYEE
CREATE TABLE EMPLOYEE (
	EMP_NO INT PRIMARY KEY,
	EMP_TITLE_ID VARCHAR (50) NOT NULL,
	BIRTH_DATE VARCHAR (15) NOT NULL,
	FIRST_NAME VARCHAR (50) NOT NULL,
	LAST_NAME VARCHAR (50) NOT NULL,
	SEX VARCHAR(10) NOT NULL,
	HIRE_DATE VARCHAR (15) NOT NULL,
	FOREIGN KEY (EMP_TITLE_ID) REFERENCES TITLES(TITLE_ID)
);

DROP TABLE SALARIES
CREATE TABLE SALARIES (
	EMP_NO INT NOT NULL,
	SALARY INT NOT NULL,
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEE(EMP_NO)
);

DROP TABLE DEPARTMENTS
CREATE TABLE DEPARTMENTS (
	DEPT_NO VARCHAR (10) PRIMARY KEY,
	DEPT_NAME VARCHAR(50) NOT NULL
);

DROP TABLE DEPT_EMP
CREATE TABLE DEPT_EMP(
	EMP_NO INT NOT NULL,
	DEPT_NO VARCHAR (10) NOT NULL,
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEE(EMP_NO),
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS(DEPT_NO)
);

DROP TABLE DEPT_MANAGER
CREATE TABLE DEPT_MANAGER(
	DEPT_NO VARCHAR (10) NOT NULL,
	EMP_NO INT NOT NULL,
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEE(EMP_NO),
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS(DEPT_NO)
);
