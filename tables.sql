create table Branches
(
branch_id int primary key identity(1,1),
branch_name varchar(20) not null
);

create table intake
(
intake_id int primary key identity(1,1),
intake_year int not null
);

create table Departments
(
dept_id int primary key identity(1,1),
dept_name varchar(20) not null,
branch_id int
constraint Departments_fk1 foreign key (branch_id) references [dbo].[Branches]([branch_id])
on update cascade
on delete set null
);

create table Tracks
(
Track_id int primary key identity(1,1),
Track_name varchar(20) not null,
dept_id int,
constraint Tracks_fk1 foreign key (dept_id) references [dbo].[Departments]([dept_id])
	on update cascade
	on delete set null
);

create table branch_track 
(
branch_id int,
track_id int ,
constraint branch_track_fk1 foreign key (branch_id) references [dbo].[Branches]([branch_id]),
constraint branch_track_fk2 foreign key (track_id) references [dbo].[Tracks]([Track_id]),
constraint pk_branch_track PRIMARY KEY (branch_id, track_id)
);

create table Instructors
(
ins_id int primary key identity(1,1),
ins_fname varchar(20) not null,
ins_lname varchar(20) not null,
track_id int
constraint instructors_fk1 foreign key (track_id) references [dbo].[Tracks]([Track_id])
on update cascade
on delete set null
);

create table Course
(
Crs_id int primary key,
Crs_name varchar(20) not null,
Crs_Description varchar(500) not null,
Crs_Max_Deg int not null,
Crs_Min_Deg int not null,
ins_id int,
track_id int
constraint Course_fk1 foreign key (ins_id) references Instructors(ins_id),
constraint Course_fk2 foreign key (track_id) references [dbo].[Tracks]([Track_id])
);

CREATE TABLE Exams
(
    exam_id INT PRIMARY KEY IDENTITY(1,1),
    exam_type VARCHAR(20) CHECK (exam_type IN ('Regular','Corrective')),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    total_time AS DATEDIFF(MINUTE, start_time, end_time) PERSISTED,
	allowance_options varchar(500),
	year int not null,
	crs_id int,
	ins_id int,
	track_id int,
	constraint Exams_fk1 foreign key (crs_id) references Course([Crs_id])
	on update cascade
	on delete set null,
	constraint Exams_fk2 foreign key ([ins_id]) references [dbo].[Instructors]([ins_id])
	on update cascade
	on delete set null
);
alter table Exams
add constraint Exams_fk3 foreign key (track_id) references [dbo].[Tracks]([Track_id])




create table Questions
(
Ques_id int primary key identity(1,1),
Question varchar(500) not null,
Ques_type varchar(20) check(Ques_type = 'MCQ'),
exam_id int,
crs_id int,
constraint Questions_fk1 foreign key (exam_id) REFERENCES [dbo].[Exams](exam_id)	
on delete set null,
constraint Questions_fk2 foreign key (crs_id) REFERENCES Course(Crs_id)	
on delete set null
);

CREATE TABLE Choices (
ChoiceID INT PRIMARY KEY IDENTITY(1,1),
QuestionID INT,
ChoiceText VARCHAR(255) NOT NULL,
IsCorrect BIT NOT NULL,
constraint Choices_fk1 foreign key (QuestionID) REFERENCES Questions(Ques_id)	
on update cascade
on delete set null
);

create table student
(
st_id int primary key identity(1,1),
st_fname varchar(20) not null,
st_lname varchar(20) not null,
crs_id int,
track_id int,
exam_id int,
intake_id int,
CONSTRAINT student_fk1 FOREIGN KEY (exam_id) REFERENCES [dbo].[Exams](exam_id)
ON DELETE SET NULL,
CONSTRAINT student_fk2 FOREIGN KEY (crs_id) REFERENCES [dbo].[Course](crs_id)
ON DELETE SET NULL
ON UPDATE CASCADE,
CONSTRAINT student_fk3 FOREIGN KEY (track_id) REFERENCES [dbo].[Tracks]([Track_id])
ON DELETE SET NULL
ON UPDATE CASCADE,
CONSTRAINT student_fk4 FOREIGN KEY (intake_id) REFERENCES [dbo].[intake]([intake_id])
ON DELETE SET NULL
ON UPDATE CASCADE
);

create table stud_ques 
(
stud_id int,
ques_id int,
stud_answer varchar(500),
valid varchar(10) check(valid in ('T','F')),
mark int not null,
constraint stud_ques_fk1 foreign key (stud_id) references student(st_id),
constraint stud_ques_fk2 foreign key (ques_id) references Questions(ques_id) ,
CONSTRAINT pk_stud_ques PRIMARY KEY (stud_id, ques_id)
);

create table exam_ques
(
	exam_id int ,
	ques_id int,
constraint exam_ques_fk1 foreign key(exam_id) references [dbo].[Exams]([exam_id]),
constraint exam_ques_fk2 foreign key(ques_id) references [dbo].[Questions]([Ques_id])
);

alter table exam_ques
add constraint exam_ques_fk1 foreign key(exam_id) references [dbo].[Exams]([exam_id]),
add constraint exam_ques_fk2 foreign key(ques_id) references [dbo].[Questions]([Ques_id])

alter table questions
drop Questions_fk1
alter table questions
drop column [exam_id]

alter table [dbo].[stud_ques]
drop column [valid]

ALTER TABLE dbo.stud_ques
DROP CONSTRAINT CK__stud_ques__valid__7C4F7684;

alter table [dbo].[student]
drop constraint student_fk3
alter table [dbo].[student]
drop column [track_id]