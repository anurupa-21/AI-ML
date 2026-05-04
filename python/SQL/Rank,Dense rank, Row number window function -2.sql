select * from Students;

select * ,ROW_NUMBER () over (partition by subject order by marks desc) [Row Number] from Students;

select * ,ROW_NUMBER () over (partition by subject order by marks ) [Row Number] from Students;

select * ,ROW_NUMBER () over (partition by student_name order by marks desc) [Row Number] from Students;
select * ,ROW_NUMBER () over (partition by student_name order by marks ) [Row Number] from Students;


select * ,Rank () over (partition by student_name order by marks desc) [Row Number] from Students;

select * ,Rank () over (partition by subject order by marks desc) [Row Number] from Students;

select * ,Dense_Rank () over (partition by subject order by marks desc) [Row Number] from Students;