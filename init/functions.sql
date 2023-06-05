create or replace function subordinates(dep integer)
  returns table (id integer, parent integer, dname text)
as
$body$
	WITH RECURSIVE dep_hierarchy AS (
	  SELECT id, parent, dname
	  FROM departments
	  WHERE id=$1
	     
	  UNION ALL
	     
	  SELECT    departments.id,
	            departments.parent,
	            departments.dname
	  FROM departments, dep_hierarchy
	  WHERE departments.parent = dep_hierarchy.id
	)
	SELECT *
	FROM dep_hierarchy;
$body$
language sql;