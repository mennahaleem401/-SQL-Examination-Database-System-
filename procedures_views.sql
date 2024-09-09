
ALTER PROCEDURE Create_exam 
    @crs_id INT,
    @ExamId INT,
    @exType VARCHAR(20),
    @StartTime TIME,
    @EndTime TIME,
    @AllOptions VARCHAR(500),
    @year INT,
    @ins_id INT,
    @track_id INT
AS
BEGIN
    -- Check if the instructor's track matches the provided track_id
    IF @track_id = (SELECT i.track_id FROM Instructors i WHERE i.ins_id = @ins_id) and
		@track_id in (select c.track_id from Course c where c.Crs_id=@crs_id)
    BEGIN
        -- Insert into Exams table
        INSERT INTO Exams ([exam_id], [exam_type], [start_time], [end_time], [allowance_options], [year], [crs_id], [ins_id], [track_id])
        VALUES (@ExamId, @exType, @StartTime, @EndTime, @AllOptions, @year, @crs_id, @ins_id, @track_id);

        -- Insert into exam_ques table
        INSERT INTO exam_ques (exam_id, ques_id)
        SELECT @ExamId, q.Ques_id
        FROM Questions q
        WHERE q.crs_id = @crs_id
        ORDER BY NEWID()
        OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
    END
    ELSE
    BEGIN
		IF @track_id != (SELECT i.track_id FROM Instructors i WHERE i.ins_id = @ins_id)
			SELECT 'Different Tracks' AS ErrorMessage;
		else if @track_id not in (select c.track_id from Course c where c.Crs_id=@crs_id)
			SELECT 'Course doesnt belog to this track' AS ErrorMessage;
    END
END
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

create proc StudentExam @ExamID int,@StId int
as
if ((select s.crs_id from student s where s.st_id=@StId)=(select e.crs_id from Exams e where e.exam_id=@ExamID))
begin
update student set [exam_id]=@ExamID 
where st_id=@StId
end
else
select 'Different Courses' as ErrorMessage

instructor.StudentExam 1,1


alter proc store_answer @stid int,@quesid int,@studanswer varchar(500)
as
if(select s.exam_id from student s where s.st_id=@stid) in (select eq.exam_id from exam_ques eq where eq.ques_id=@quesid)
	and @studanswer in (select c.ChoiceText from Choices c where c.QuestionID=@quesid)
	begin
		insert into stud_ques (stud_id,ques_id,stud_answer)
		values(@stid,@quesid,@studanswer)
		if @studanswer =(select c.ChoiceText from Choices c where c.IsCorrect=1 and c.QuestionID=@quesid)
		begin
			update stud_ques set valid='T',mark=20 where stud_id=@stid and ques_id=@quesid
		end
		else
		begin
			update stud_ques set valid='F',mark=0 where stud_id=@stid and ques_id=@quesid
		end
	end
else
	begin
		if(select s.exam_id from student s where s.st_id=@stid) not in (select eq.exam_id from exam_ques eq where eq.ques_id=@quesid)
		select 'Invalid question id'
		if @studanswer not in (select c.ChoiceText from Choices c where c.QuestionID=@quesid)
		select 'Invalid answer'
	end


student.store_answer 1,1,'London'


alter proc results @stid int 
as
if @stid in (select sq.stud_id from stud_ques sq)
begin
	declare @x int = (select isnull(sum(mark),0) from stud_ques where stud_id=@stid)
	select isnull(sum(mark),0) as 'Total Mark' from stud_ques where stud_id=@stid
	update student set mark = @x where st_id=@stid
end
else
	select 'Invalid student id' as Error_Message
student.results 1

alter table student
add mark int 

update student set mark=NULL

alter proc showexam @examid int,@stid int
as
if @examid = (select s.exam_id from student s where s.st_id=@stid)
begin
SELECT 
    q.Question,
    STRING_AGG(c.ChoiceText, ', ') AS Choices
FROM 
    Questions q
INNER JOIN 
    Choices c ON c.QuestionID = q.Ques_id
where c.QuestionID in (select sq.ques_id from exam_ques sq where sq.exam_id=(select s.exam_id from student s where s.st_id=@stid) )

GROUP BY 
    q.Question;
end
else
	select 'Invalid exam id' as Error_Message

student.showexam 1,1

alter table student 
drop constraint student_fk3
alter table student
drop column track_id

create schema instructor
create schema student

alter schema instructor transfer Create_exam
alter schema instructor transfer StudentExam

alter schema student transfer store_answer
alter schema student transfer results
alter schema student transfer showexam

create view V_ShowStudents (ID,Full_Name,CRS_NAME,INTAKE_YEAR,MARK)
with encryption
as
select st_id,st_fname+' '+st_lname as Full_Name,c.Crs_name ,i.intake_year,s.mark from student s inner join Course c 
on c.Crs_id=s.crs_id inner join intake i on i.intake_id=s.intake_id

select * from V_ShowStudents

create view V_ShowInstructors 
with encryption
as
select i.ins_id,i.ins_fname+' '+i.ins_lname as Full_Name,t.Track_name,c.Crs_name from Instructors i inner join Tracks t on t.Track_id=i.track_id
inner join Course c on c.ins_id=i.ins_id

select * from V_ShowInstructors



