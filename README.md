# SQL Examination Database System
The SQL Examination Database System optimizes educational institutions' exam processes and data management. It includes tables for branches, courses, exams, and students, with stored procedures for creating and assigning exams. Security roles ensure data integrity and access control.

# Key Components

# Tables

  Branches: Stores information about different branches.
  
  ![image](https://github.com/user-attachments/assets/47c73f37-758e-4d73-8504-ef299621fb62)

  
  Intake: Records intake years.
  
  ![image](https://github.com/user-attachments/assets/9c37ad72-35f2-4bb2-8906-800bf5998d09)

  
  Departments: Details of departments.
  
  ![image](https://github.com/user-attachments/assets/815936df-c378-4b16-a4c2-5af11ab32689)

  
  Tracks: Track details within departments.
  
  ![image](https://github.com/user-attachments/assets/f715f416-a199-470b-8471-a8f27e15642e)
  
  Instructors: Instructor details.
  
  ![image](https://github.com/user-attachments/assets/7ba398d7-4d3b-4d88-9c7d-215d24eaeac6)

  
  Course: Course information.
  
  ![image](https://github.com/user-attachments/assets/aac0df51-c5ee-4569-b31d-0ae45c092074)

  
  Exams: Exam details.
  
  ![image](https://github.com/user-attachments/assets/f0f2d063-780c-487f-aadd-d0f1c4466059)

  
  Questions: Stores exam questions.
  
  ![image](https://github.com/user-attachments/assets/0a69eee5-1cc3-4534-90bb-d82c15fadc2b)

  
  Choices: Possible answers for questions.
  
  ![image](https://github.com/user-attachments/assets/530dd035-eebb-45b0-99d7-e3fd7d4fa4e7)

  
  Student: Student details.
  
  ![image](https://github.com/user-attachments/assets/3a7d8245-e6da-46f3-9db0-903ff4d9010e)

  
  Stud_Ques: Student answers to questions.
  
  ![image](https://github.com/user-attachments/assets/501da3a0-b8aa-454f-bbe6-01a8a20f3546)

  
  Exam_Ques: Associates exams with their questions.
  
  ![image](https://github.com/user-attachments/assets/5b4d44f1-10a8-4858-b876-962000744d07)

  
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
