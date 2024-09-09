# SQL Examination Database System
The SQL Examination Database System optimizes educational institutions' exam processes and data management. It includes tables for branches, courses, exams, and students, with stored procedures for creating and assigning exams. Security roles ensure data integrity and access control.

# Key Components
# Tables

  Branches: Stores information about different branches.
  
  Intake: Records intake years.
  
  Departments: Details of departments.
  
  Tracks: Track details within departments.
  
  Branch_Track: Associates branches with tracks.
  
  Instructors: Instructor details.
  
  Course: Course information.
  
  Exams: Exam details.
  
  Questions: Stores exam questions.
  
  Choices: Possible answers for questions.
  
  Student: Student details.
  
  Stud_Ques: Student answers to questions.
  
  Exam_Ques: Associates exams with their questions.
  
# Stored Procedures
  Create_Exam: Creates exams and assigns questions.
  
  Student_Exam: Assigns exams to students.
  
  Store_Answer: Records student answers.
  
  Results: Calculates and updates student marks.
  
  Show_Exam: Displays exam questions and choices.
  
# Views
  V_ShowStudents: Displays student details, including ID, full name, course name, intake year, and mark.
  
  V_ShowInstructors: Shows instructor details, including ID, full name, track name, and course name.
  
  
# Security Features
  Admin Role: Full control over the database.
  
  Training Manager Role: Manage training-related data.
  
  Instructor Role: Manage exams and view course information.
  
  Student Role: View exam results and course information.
