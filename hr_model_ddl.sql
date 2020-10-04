-- Generated by Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   at:        2020-10-04 16:35:16 CEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE USER hr IDENTIFIED BY profile DEFAULT 
    ACCOUNT UNLOCK 
;

GRANT
    CREATE VIEW,
    UNLIMITED TABLESPACE,
    CREATE DATABASE LINK, advisor,
    CREATE SEQUENCE,
    CREATE SESSION,
    ALTER SESSION,
    CREATE SYNONYM
TO hr;

CREATE SEQUENCE departments_seq INCREMENT BY 10 MAXVALUE 9990 MINVALUE 1 NOCACHE;

CREATE SEQUENCE employees_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 NOCACHE;

CREATE SEQUENCE locations_seq INCREMENT BY 100 MAXVALUE 9900 MINVALUE 1 NOCACHE;

CREATE OR REPLACE PROCEDURE HR.add_job_history;  (  p_emp_id          job_history.employee_id%type&lt;br&gt;   , p_start_date      job_history.start_date%type&lt;br&gt;   , p_end_date        job_history.end_date%type&lt;br&gt;   , p_job_id          job_history.job_id%type&lt;br&gt;   , p_department_id   job_history.department_id%type&lt;br&gt;   )&lt;br&gt;IS&lt;br&gt;BEGIN&lt;br&gt;  INSERT INTO job_history (employee_id, start_date, end_date,&lt;br&gt;                           job_id, department_id)&lt;br&gt;    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);&lt;br&gt;END add_job_history;
/

CREATE OR REPLACE PROCEDURE HR.secure_dml;  IF TO_CHAR (SYSDATE, &apos;HH24:MI&apos;) NOT BETWEEN &apos;08:00&apos; AND &apos;18:00&apos;&lt;br&gt;        OR TO_CHAR (SYSDATE, &apos;DY&apos;) IN (&apos;SAT&apos;, &apos;SUN&apos;) THEN&lt;br&gt;	RAISE_APPLICATION_ERROR (-20205,&lt;br&gt;		&apos;You may only make changes during normal office hours&apos;);&lt;br&gt;  END IF;&lt;br&gt;END secure_dml;
/

CREATE TABLE countries (
    country_id     CHAR(2 BYTE) NOT NULL,
    country_name   VARCHAR2(40 BYTE),
    region_id      NUMBER
)
LOGGING
    ENABLE ROW MOVEMENT;

COMMENT ON COLUMN countries.country_id IS
    'Primary key of countries table.';

COMMENT ON COLUMN countries.country_name IS
    'Country name';

COMMENT ON COLUMN countries.region_id IS
    'Region ID for the country. Foreign key to region_id column in the departments table.';

CREATE UNIQUE INDEX countries_country_id_idx ON
    countries (
        country_id
    ASC );

ALTER TABLE countries ADD CONSTRAINT country_c_id_pk PRIMARY KEY ( country_id );

CREATE TABLE departments (
    department_id     NUMBER(4) NOT NULL,
    department_name   VARCHAR2(30 BYTE) NOT NULL,
    manager_id        NUMBER(6),
    location_id       NUMBER(4)
)
LOGGING
    ENABLE ROW MOVEMENT;

COMMENT ON COLUMN departments.department_id IS
    'Primary key column of departments table.';

COMMENT ON COLUMN departments.department_name IS
    'A not null column that shows name of a department. Administration,&lt;br&gt;Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public&lt;br&gt;Relations, Sales, Finance, and Accounting. '
    ;

COMMENT ON COLUMN departments.manager_id IS
    'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.'
    ;

COMMENT ON COLUMN departments.location_id IS
    'Location id where a department is located. Foreign key to location_id column of locations table.';

CREATE INDEX dept_location_ix ON
    departments (
        location_id
    ASC )
        LOGGING;

CREATE UNIQUE INDEX departments_department_id_idx ON
    departments (
        department_id
    ASC );

ALTER TABLE departments ADD CONSTRAINT dept_id_pk PRIMARY KEY ( department_id );

CREATE TABLE employees (
    employee_id      NUMBER(6) NOT NULL,
    first_name       VARCHAR2(20 BYTE),
    last_name        VARCHAR2(25 BYTE) NOT NULL,
    email            VARCHAR2(25 BYTE) NOT NULL,
    phone_number     VARCHAR2(20 BYTE),
    hire_date        DATE NOT NULL,
    job_id           VARCHAR2(10 BYTE) NOT NULL,
    salary           NUMBER(8, 2),
    commission_pct   NUMBER(2, 2),
    manager_id       NUMBER(6),
    department_id    NUMBER(4)
)
LOGGING
    ENABLE ROW MOVEMENT;

ALTER TABLE employees ADD CONSTRAINT emp_salary_min CHECK ( salary > 0 );

COMMENT ON COLUMN employees.employee_id IS
    'Primary key of employees table.';

COMMENT ON COLUMN employees.first_name IS
    'First name of the employee. A not null column.';

COMMENT ON COLUMN employees.last_name IS
    'Last name of the employee. A not null column.';

COMMENT ON COLUMN employees.email IS
    'Email id of the employee';

COMMENT ON COLUMN employees.phone_number IS
    'Phone number of the employee; includes country code and area code';

COMMENT ON COLUMN employees.hire_date IS
    'Date when the employee started on this job. A not null column.';

COMMENT ON COLUMN employees.job_id IS
    'Current job of the employee; foreign key to job_id column of the&lt;br&gt;jobs table. A not null column.';

COMMENT ON COLUMN employees.salary IS
    'Monthly salary of the employee. Must be greater&lt;br&gt;than zero (enforced by constraint emp_salary_min)';

COMMENT ON COLUMN employees.commission_pct IS
    'Commission percentage of the employee; Only employees in sales&lt;br&gt;department elgible for commission percentage';

COMMENT ON COLUMN employees.manager_id IS
    'Manager id of the employee; has same domain as manager_id in&lt;br&gt;departments table. Foreign key to employee_id column of employees table.&lt;br&gt;(useful for reflexive joins and CONNECT BY query)'
    ;

COMMENT ON COLUMN employees.department_id IS
    'Department id where employee works; foreign key to department_id&lt;br&gt;column of the departments table';

CREATE INDEX emp_department_ix ON
    employees (
        department_id
    ASC )
        LOGGING;

CREATE INDEX emp_job_ix ON
    employees (
        job_id
    ASC )
        LOGGING;

CREATE INDEX emp_manager_ix ON
    employees (
        manager_id
    ASC )
        LOGGING;

CREATE INDEX emp_name_ix ON
    employees (
        last_name
    ASC,
        first_name
    ASC )
        LOGGING;

CREATE UNIQUE INDEX employees_employee_id_idx ON
    employees (
        employee_id
    ASC );

ALTER TABLE employees ADD CONSTRAINT emp_emp_id_pk PRIMARY KEY ( employee_id );

ALTER TABLE employees ADD CONSTRAINT emp_email_uk UNIQUE ( email );

CREATE TABLE job_history (
    employee_id     NUMBER(6) NOT NULL,
    start_date      DATE NOT NULL,
    end_date        DATE NOT NULL,
    job_id          VARCHAR2(10 BYTE) NOT NULL,
    department_id   NUMBER(4)
)
LOGGING
    ENABLE ROW MOVEMENT;

COMMENT ON COLUMN job_history.employee_id IS
    'A not null column in the complex primary key employee_id+start_date.&lt;br&gt;Foreign key to employee_id column of the employee table'
    ;

COMMENT ON COLUMN job_history.start_date IS
    'A not null column in the complex primary key employee_id+start_date.&lt;br&gt;Must be less than the end_date of the job_history table. (enforced by&lt;br&gt;constraint jhist_date_interval)'
    ;

COMMENT ON COLUMN job_history.end_date IS
    'Last day of the employee in this job role. A not null column. Must be&lt;br&gt;greater than the start_date of the job_history table.&lt;br&gt;(enforced by constraint jhist_date_interval)'
    ;

COMMENT ON COLUMN job_history.job_id IS
    'Job role in which the employee worked in the past; foreign key to&lt;br&gt;job_id column in the jobs table. A not null column.'
    ;

COMMENT ON COLUMN job_history.department_id IS
    'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';

CREATE INDEX jhist_job_ix ON
    job_history (
        job_id
    ASC )
        LOGGING;

CREATE INDEX jhist_emp_ix ON
    job_history (
        employee_id
    ASC )
        LOGGING;

CREATE INDEX jhist_dept_ix ON
    job_history (
        department_id
    ASC )
        LOGGING;

--  ERROR: Index name length exceeds maximum allowed length(30) 

CREATE UNIQUE INDEX job_history_employee_id_start_date_idx ON
    job_history (
        employee_id
    ASC,
        start_date
    ASC );

ALTER TABLE job_history add constraint jhist_date_check check ( end_date &gt;start_date )
;
ALTER TABLE job_history ADD CONSTRAINT jhist_id_date_pk PRIMARY KEY ( employee_id,
                                                                      start_date );

CREATE TABLE jobs (
    job_id       VARCHAR2(10 BYTE) NOT NULL,
    job_title    VARCHAR2(35 BYTE) NOT NULL,
    min_salary   NUMBER(6),
    max_salary   NUMBER(6)
)
LOGGING
    ENABLE ROW MOVEMENT;

COMMENT ON COLUMN jobs.job_id IS
    'Primary key of jobs table.';

COMMENT ON COLUMN jobs.job_title IS
    'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';

COMMENT ON COLUMN jobs.min_salary IS
    'Minimum salary for a job title.';

COMMENT ON COLUMN jobs.max_salary IS
    'Maximum salary for a job title';

CREATE UNIQUE INDEX jobs_job_id_idx ON
    jobs (
        job_id
    ASC );

ALTER TABLE jobs ADD CONSTRAINT job_id_pk PRIMARY KEY ( job_id );

CREATE TABLE locations (
    location_id      NUMBER(4) NOT NULL,
    street_address   VARCHAR2(40 BYTE),
    postal_code      VARCHAR2(12 BYTE),
    city             VARCHAR2(30 BYTE) NOT NULL,
    state_province   VARCHAR2(25 BYTE),
    country_id       CHAR(2 BYTE)
)
LOGGING
    ENABLE ROW MOVEMENT;

COMMENT ON COLUMN locations.location_id IS
    'Primary key of locations table';

COMMENT ON COLUMN locations.street_address IS
    'Street address of an office, warehouse, or production site of a company.&lt;br&gt;Contains building number and street name';

COMMENT ON COLUMN locations.postal_code IS
    'Postal code of the location of an office, warehouse, or production site&lt;br&gt;of a company. ';

COMMENT ON COLUMN locations.city IS
    'A not null column that shows city where an office, warehouse, or&lt;br&gt;production site of a company is located. ';

COMMENT ON COLUMN locations.state_province IS
    'State or Province where an office, warehouse, or production site of a&lt;br&gt;company is located.';

COMMENT ON COLUMN locations.country_id IS
    'Country where an office, warehouse, or production site of a company is&lt;br&gt;located. Foreign key to country_id column of the countries table.'
    ;

CREATE INDEX loc_city_ix ON
    locations (
        city
    ASC )
        LOGGING;

CREATE INDEX loc_state_prov_ix ON
    locations (
        state_province
    ASC )
        LOGGING;

CREATE INDEX loc_country_ix ON
    locations (
        country_id
    ASC )
        LOGGING;

CREATE UNIQUE INDEX locations_location_id_idx ON
    locations (
        location_id
    ASC );

ALTER TABLE locations ADD CONSTRAINT loc_id_pk PRIMARY KEY ( location_id );

CREATE TABLE regions (
    region_id     NUMBER NOT NULL,
    region_name   VARCHAR2(25 BYTE)
)
LOGGING
    ENABLE ROW MOVEMENT;

CREATE UNIQUE INDEX regions_region_id_idx ON
    regions (
        region_id
    ASC );

ALTER TABLE regions ADD CONSTRAINT reg_id_pk PRIMARY KEY ( region_id );

ALTER TABLE countries
    ADD CONSTRAINT countr_reg_fk FOREIGN KEY ( region_id )
        REFERENCES regions ( region_id )
    NOT DEFERRABLE;

ALTER TABLE departments
    ADD CONSTRAINT dept_loc_fk FOREIGN KEY ( location_id )
        REFERENCES locations ( location_id )
    NOT DEFERRABLE;

ALTER TABLE departments
    ADD CONSTRAINT dept_mgr_fk FOREIGN KEY ( manager_id )
        REFERENCES employees ( employee_id )
    NOT DEFERRABLE;

ALTER TABLE employees
    ADD CONSTRAINT emp_dept_fk FOREIGN KEY ( department_id )
        REFERENCES departments ( department_id )
    NOT DEFERRABLE;

ALTER TABLE employees
    ADD CONSTRAINT emp_job_fk FOREIGN KEY ( job_id )
        REFERENCES jobs ( job_id )
    NOT DEFERRABLE;

ALTER TABLE employees
    ADD CONSTRAINT emp_manager_fk FOREIGN KEY ( manager_id )
        REFERENCES employees ( employee_id )
    NOT DEFERRABLE;

ALTER TABLE job_history
    ADD CONSTRAINT jhist_dept_fk FOREIGN KEY ( department_id )
        REFERENCES departments ( department_id )
    NOT DEFERRABLE;

ALTER TABLE job_history
    ADD CONSTRAINT jhist_emp_fk FOREIGN KEY ( employee_id )
        REFERENCES employees ( employee_id )
    NOT DEFERRABLE;

ALTER TABLE job_history
    ADD CONSTRAINT jhist_job_fk FOREIGN KEY ( job_id )
        REFERENCES jobs ( job_id )
    NOT DEFERRABLE;

ALTER TABLE locations
    ADD CONSTRAINT loc_c_id_fk FOREIGN KEY ( country_id )
        REFERENCES countries ( country_id )
    NOT DEFERRABLE;

CREATE OR REPLACE VIEW EMP_DETAILS_VIEW  AS
&lt;br&gt;SELECT&lt;br&gt;  e.employee_id,&lt;br&gt;  e.job_id,&lt;br&gt;  e.manager_id,&lt;br&gt;  e.department_id,&lt;br&gt;  d.location_id,&lt;br&gt;  l.country_id,&lt;br&gt;  e.first_name,&lt;br&gt;  e.last_name,&lt;br&gt;  e.salary,&lt;br&gt;  e.commission_pct,&lt;br&gt;  d.department_name,&lt;br&gt;  j.job_title,&lt;br&gt;  l.city,&lt;br&gt;  l.state_province,&lt;br&gt;  c.country_name,&lt;br&gt;  r.region_name&lt;br&gt;FROM&lt;br&gt;  employees e,&lt;br&gt;  departments d,&lt;br&gt;  jobs j,&lt;br&gt;  locations l,&lt;br&gt;  countries c,&lt;br&gt;  regions r&lt;br&gt;WHERE e.department_id = d.department_id&lt;br&gt;  AND d.location_id = l.location_id&lt;br&gt;  AND l.country_id = c.country_id&lt;br&gt;  AND c.region_id = r.region_id&lt;br&gt;  AND j.job_id = e.job_id&lt;br&gt;WITH READ ONLY 
;

CREATE OR REPLACE TRIGGER SECURE_EMPLOYEES 
    BEFORE INSERT OR UPDATE OR DELETE ON EMPLOYEES 
    FOR EACH ROW 
BEGIN&lt;br&gt;  secure_dml;&lt;br&gt;END secure_employees; 
/

CREATE OR REPLACE TRIGGER UPDATE_JOB_HISTORY 
    AFTER UPDATE OF JOB_ID, DEPARTMENT_ID ON EMPLOYEES 
    FOR EACH ROW 
BEGIN&lt;br&gt;  add_job_history(:old.employee_id, :old.hire_date, sysdate,&lt;br&gt;                  :old.job_id, :old.department_id);&lt;br&gt;END; 
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                            18
-- ALTER TABLE                             20
-- CREATE VIEW                              1
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         2
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          3
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              1
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   1
-- WARNINGS                                 0
