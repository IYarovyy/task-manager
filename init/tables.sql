-- Departments -------------------------------------------------------
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    parent integer,
    dname varchar(255) not null
);

CREATE INDEX departments_parent ON departments(parent int4_ops);

-- Roles -------------------------------------------------------
DROP TYPE IF EXISTS user_role CASCADE;
CREATE TYPE user_role AS ENUM ('chief', 'regular', 'operator');

-- Users -------------------------------------------------------
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department integer,
    urole user_role,
    first_name varchar(255) not null,
	second_name varchar(255) not null
);

CREATE INDEX users_department ON users(department int4_ops);

-- Tasks -------------------------------------------------------
DROP TABLE IF EXISTS tasks;
CREATE TABLE tasks (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_by integer,
    in_work BOOLEAN,
    -- ADD REQUIRED FIELDS --
    tname varchar(255) not null
);

CREATE INDEX tasks_creator ON tasks(created_by int4_ops);

-- Subtasks -------------------------------------------------------
DROP TABLE IF EXISTS subtasks;
CREATE TABLE subtasks (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    parent integer,
    assigned_to integer,
    -- ADD REQUIRED FIELDS --
    tname varchar(255) not null
);

CREATE INDEX subtasks_parent ON subtasks(parent int4_ops);
CREATE INDEX subtasks_assigned ON subtasks(assigned_to int4_ops);
