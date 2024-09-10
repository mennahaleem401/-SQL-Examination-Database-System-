# SQL Examination Database System
The SQL Examination Database System optimizes educational institutions' exam processes and data management. It includes tables for branches, courses, exams, and students, with stored procedures for creating and assigning exams. Security roles ensure data integrity and access control.


# Tables
1. Branches
   
•	Purpose: Stores information about different branches.

•	Columns: branch_id (Primary Key), branch_name.

3. intake
   
•	Purpose: Stores intake years.

•	Columns: intake_id (Primary Key), intake_year.

5. Departments
   
•	Purpose: Stores department details.

•	Columns: dept_id (Primary Key), dept_name, branch_id (Foreign Key referencing Branches).

7. Tracks
   
•	Purpose: Stores track details within departments.

•	Columns: Track_id (Primary Key), Track_name, dept_id (Foreign Key referencing Departments).

9. branch_track
    
•	Purpose: Associate branches with tracks.

•	Columns: branch_id (Foreign Key referencing Branches), track_id (Foreign Key referencing Tracks), Composite Primary Key (branch_id, track_id).

11. Instructors
    
•	Purpose: Stores instructor details.

•	Columns: ins_id (Primary Key), ins_fname, ins_lname, track_id (Foreign Key referencing Tracks).

13. Course

•	Purpose: Stores course details.

•	Columns: Crs_id (Primary Key), Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id (Foreign Key referencing Instructors), track_id (Foreign Key referencing Tracks).




15. Exams

•	Purpose: Stores exam details.

•	Columns: exam_id (Primary Key), exam_type, start_time, end_time, total_time (calculated), allowance_options, year, crs_id (Foreign Key referencing Course), ins_id (Foreign Key referencing Instructors), track_id (Foreign Key referencing Tracks).
17. Questions

•	Purpose: Stores questions for exams.

•	Columns: Ques_id (Primary Key), Question, Ques_type, crs_id (Foreign Key referencing Course).

18. Choices
    
•	Purpose: Stores possible answers to questions.

•	Columns: ChoiceID (Primary Key), QuestionID (Foreign Key referencing Questions), ChoiceText, IsCorrect.

20. student
    
•	Purpose: Stores student details.

•	Columns: st_id (Primary Key), st_fname, st_lname, crs_id (Foreign Key referencing Course), exam_id (Foreign Key referencing Exams), intake_id (Foreign Key referencing intake).

22. stud_ques
    
•	Purpose: Stores student answers to questions.

•	Columns: stud_id (Foreign Key referencing student), ques_id (Foreign Key referencing Questions), stud_answer, mark, Composite Primary Key (stud_id, ques_id).

24. exam_ques

•	Purpose: Associates exams with their questions.

•	Columns: exam_id (Foreign Key referencing Exams), ques_id (Foreign Key referencing Questions).



# Procedure

1. Create_exam

This procedure creates an exam for a specific course and instructor. It checks if the instructor’s track matches the provided track ID and if the course belongs to that track. If both conditions are met, it inserts the exam details into the Exams table and randomly selects five questions from the Questions table to insert into the exam_ques table. If the conditions are not met, it returns an error message indicating the mismatch.


3. StudentExam
   
This procedure assigns an exam to a student. It checks if the student’s course matches the course of the exam. If they match, it updates the student’s record with the exam ID. If they don’t match, it returns an error message indicating the mismatch.

5. store_answer

This procedure stores a student’s answer to a question. It checks if the question belongs to the student’s exam and if the provided answer is a valid choice. If both conditions are met, it inserts the answer into the stud_ques table and updates the validity and marks based on whether the answer is correct. If the conditions are not met, it returns an appropriate error message.

7. results
This procedure calculates and updates the total mark for a student based on their answers. It sums the marks from the stud_ques table and updates the student’s record in the student table. If the student ID is invalid, it returns an error message.
9. showexam

This procedure displays the questions and choices for a student’s exam. It checks if the exam ID matches the student’s exam and retrieves the questions and their choices from the Questions and Choices tables. If the exam ID is invalid, it returns an error message.

# Views

1. V_ShowStudents

This view displays student details, including their ID, full name, course name, intake year, and mark. It joins the student, Course, and intake tables.
3. V_ShowInstructors

This view shows instructor details, including their ID, full name, track name, and course name. It joins the Instructors, Tracks, and Course tables.

# Security Features
  Admin Role: Full control over the database.
  
  Training Manager Role: Manage training-related data.
  
  Instructor Role: Manage exams and view course information.
  
  Student Role: View exam results and course information.

# Running Queries

1- Show Exam  (procedure)

![image](https://github.com/user-attachments/assets/7ca83fc2-6a98-4528-a129-bd29ae851810)


2-V_show_instructors (View)

![image](https://github.com/user-attachments/assets/a064232a-ab9f-401e-b985-4d421d05eb84)


3- Student_show_exam (procedure)

 ![image](https://github.com/user-attachments/assets/5612141e-a370-4104-814b-b33baa5c3ede)


4-results (procedure)

 ![image](https://github.com/user-attachments/assets/6a00790a-16d0-41d6-9d83-b48120a9485e)

