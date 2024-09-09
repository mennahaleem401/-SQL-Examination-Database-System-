--Creating Exam (Instructor)
EXEC instructor.Create_exam 
    @crs_id = 1,          
    @ExamId = 1,        
    @exType = 'Regular',  
    @StartTime = '09:00', 
    @EndTime = '11:00',  
    @AllOptions = 'No additional options', 
    @year = 2024,         
    @ins_id = 5,         
    @track_id = 2;
	
--Assigning exam to student (Instructor)

instructor.StudentExam 1,1 --ExamID , StId 

--Storing answers (Student)
student.store_answer 1,1,'London'  --stid,quesid,studanswer

--Displaying total mark for a student (Student)
student.results 1 <--Student_id

--Showing exam text (student)
student.showexam 1,1 --examid ,stid

--Displaying students data (Training manager)
select * from V_ShowStudents

--Displaying instructors data (Training manager)
select * from V_ShowInstructors