-- Departments ----------------------
insert into departments (parent, dname)
values (null, 'Main');
insert into departments (parent, dname)
values (1, '1Level1');
insert into departments (parent, dname)
values (1, '2Level1');
insert into departments (parent, dname)
values (2, '1.1_Level2');
insert into departments (parent, dname)
values (2, '1.2_Level2');
insert into departments (parent, dname)
values (3, '1.1_Level2');
insert into departments (parent, dname)
values (3, '2.2_Level2');
insert into departments (parent, dname)
values (4, '1.1_Level3');
insert into departments (parent, dname)
values (4, '2.2_Level3');
-- Users ----------------------
insert into users (department, urole, first_name, second_name)
values (1, 'chief', 'Big', 'Boss');
insert into users (department, urole, first_name, second_name)
values (1, 'operator', 'Aunt', 'Klava');
insert into users (department, urole, first_name, second_name)
values (2, 'chief', '2', 'Boss');
insert into users (department, urole, first_name, second_name)
values (3, 'chief', '3', 'Boss');
insert into users (department, urole, first_name, second_name)
values (4, 'chief', '4', 'Boss');
insert into users (department, urole, first_name, second_name)
values (5, 'chief', '5', 'Boss');
insert into users (department, urole, first_name, second_name)
values (5, 'regular', '5', 'Oper1');

-- Tasks ----------------------
insert into tasks (created_by, in_work, tname)
values (2, true, 'Task1');

-- Subtasks ----------------------
insert into subtasks (parent, assigned_to, tname)
values (1, 7, 'Task1_Subtask1');
