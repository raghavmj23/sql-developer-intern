use intern_project;
SELECT *
FROM task_2
WHERE name IS NULL
   OR email IS NULL
   OR gender IS NULL
   OR date_of_birth IS NULL
   OR salary IS NULL
   OR created_at IS NULL; 
   
# for updating of null values
update task_2 set gender='female' where gender is null;
select * from task_2 where gender = 'female';
update task_2 set salary = 67000.00 where salary is null;
select * from task_2 where salary = 67000;

# deleting rows containig null values

delete from task_2 where date_of_birth is null; 
select * from task_2 ;
