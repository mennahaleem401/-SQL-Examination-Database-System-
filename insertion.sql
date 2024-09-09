INSERT INTO Branches (branch_name) VALUES ('Cairo');
INSERT INTO Branches (branch_name) VALUES ('Alexandria');
INSERT INTO Branches (branch_name) VALUES ('Giza');
INSERT INTO Branches (branch_name) VALUES ('Port Said');
INSERT INTO Branches (branch_name) VALUES ('Suez');
INSERT INTO Branches (branch_name) VALUES ('Luxor');
INSERT INTO Branches (branch_name) VALUES ('Aswan');
INSERT INTO Branches (branch_name) VALUES ('Asyut');
INSERT INTO Branches (branch_name) VALUES ('Ismailia');
INSERT INTO Branches (branch_name) VALUES ('Faiyum');
INSERT INTO Branches (branch_name) VALUES ('Sharkia');
INSERT INTO Branches (branch_name) VALUES ('Beheira');
INSERT INTO Branches (branch_name) VALUES ('Qena');
INSERT INTO Branches (branch_name) VALUES ('Gharbia');
INSERT INTO Branches (branch_name) VALUES ('Minya');

INSERT INTO intake (intake_year) VALUES (2010);
INSERT INTO intake (intake_year) VALUES (2011);
INSERT INTO intake (intake_year) VALUES (2012);
INSERT INTO intake (intake_year) VALUES (2013);
INSERT INTO intake (intake_year) VALUES (2014);
INSERT INTO intake (intake_year) VALUES (2015);
INSERT INTO intake (intake_year) VALUES (2016);
INSERT INTO intake (intake_year) VALUES (2017);
INSERT INTO intake (intake_year) VALUES (2018);
INSERT INTO intake (intake_year) VALUES (2019);
INSERT INTO intake (intake_year) VALUES (2020);
INSERT INTO intake (intake_year) VALUES (2021);
INSERT INTO intake (intake_year) VALUES (2022);
INSERT INTO intake (intake_year) VALUES (2023);
INSERT INTO intake (intake_year) VALUES (2024);

-- Inserting multiple departments for each branch

-- For Cairo
INSERT INTO Departments (dept_name, branch_id) VALUES ('Computer Science', 1);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Information Tech', 1);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Civil Engineering', 1);

-- For Alexandria
INSERT INTO Departments (dept_name, branch_id) VALUES ('Mechanical Engineering', 2);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Electrical Engineering', 2);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Architecture', 2);

-- For Giza
INSERT INTO Departments (dept_name, branch_id) VALUES ('Business Administration', 3);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Marketing', 3);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Accounting', 3);

-- For Port Said
INSERT INTO Departments (dept_name, branch_id) VALUES ('Marine Engineering', 4);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Logistics', 4);

-- For Suez
INSERT INTO Departments (dept_name, branch_id) VALUES ('Petroleum Engineering', 5);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Chemical Engineering', 5);

-- For Luxor
INSERT INTO Departments (dept_name, branch_id) VALUES ('Tourism and Hospitality', 6);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Archaeology', 6);

-- For Aswan
INSERT INTO Departments (dept_name, branch_id) VALUES ('Renewable Energy', 7);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Water Resources Engineering', 7);

-- For Asyut
INSERT INTO Departments (dept_name, branch_id) VALUES ('Agriculture', 8);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Veterinary Medicine', 8);

-- For Ismailia
INSERT INTO Departments (dept_name, branch_id) VALUES ('Fisheries and Aquatic Sciences', 9);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Environmental Engineering', 9);

-- For Faiyum
INSERT INTO Departments (dept_name, branch_id) VALUES ('Social Sciences', 10);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Humanities', 10);

-- For Sharkia
INSERT INTO Departments (dept_name, branch_id) VALUES ('Education', 11);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Physical Education', 11);

-- For Beheira
INSERT INTO Departments (dept_name, branch_id) VALUES ('Food Science', 12);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Biotechnology', 12);

-- For Qena
INSERT INTO Departments (dept_name, branch_id) VALUES ('Physics', 13);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Chemistry', 13);

-- For Gharbia
INSERT INTO Departments (dept_name, branch_id) VALUES ('Mathematics', 14);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Statistics', 14);

-- For Minya
INSERT INTO Departments (dept_name, branch_id) VALUES ('Nursing', 15);
INSERT INTO Departments (dept_name, branch_id) VALUES ('Pharmacy', 15);

delete from Departments
DBCC CHECKIDENT ('Departments', RESEED, 0);

alter table departments
alter column [dept_name] varchar(50) not null

-- Inserting multiple tracks for each department

-- For Computer Science in Cairo
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Artificial Intelligence', 1);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Data Science', 1);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Cybersecurity', 1);

-- For Information Technology in Cairo
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Network Administration', 2);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Software Development', 2);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Cloud Computing', 2);

-- For Civil Engineering in Cairo
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Structural Engineering', 3);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Geotechnical Engineering', 3);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Transportation Engineering', 3);

-- For Mechanical Engineering in Alexandria
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Thermodynamics', 4);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Fluid Mechanics', 4);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Robotics', 4);

-- For Electrical Engineering in Alexandria
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Power Systems', 5);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Control Systems', 5);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Electronics', 5);

-- For Architecture in Alexandria
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Urban Design', 6);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Landscape Architecture', 6);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Interior Design', 6);

-- For Business Administration in Giza
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Human Resources', 7);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Finance', 7);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Operations Management', 7);

-- For Marketing in Giza
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Digital Marketing', 8);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Market Research', 8);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Brand Management', 8);

-- For Accounting in Giza
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Auditing', 9);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Taxation', 9);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Financial Reporting', 9);

-- For Marine Engineering in Port Said
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Naval Architecture', 10);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Offshore Engineering', 10);

-- For Logistics in Port Said
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Supply Chain Management', 11);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Transportation Management', 11);

-- For Petroleum Engineering in Suez
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Reservoir Engineering', 12);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Drilling Engineering', 12);

-- For Chemical Engineering in Suez
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Process Design', 13);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Polymer Engineering', 13);

-- For Tourism and Hospitality in Luxor
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Hotel Management', 14);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Tour Operations', 14);

-- For Archaeology in Luxor
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Egyptology', 15);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Conservation', 15);

-- For Renewable Energy in Aswan
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Solar Energy', 16);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Wind Energy', 16);

-- For Water Resources Engineering in Aswan
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Hydrology', 17);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Water Quality Management', 17);

-- For Agriculture in Asyut
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Crop Science', 18);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Soil Science', 18);

-- For Veterinary Medicine in Asyut
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Animal Health', 19);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Veterinary Surgery', 19);

-- For Fisheries and Aquatic Sciences in Ismailia
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Aquaculture', 20);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Marine Biology', 20);

-- For Environmental Engineering in Ismailia
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Pollution Control', 21);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Sustainable Development', 21);

-- For Social Sciences in Faiyum
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Sociology', 22);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Psychology', 22);

-- For Humanities in Faiyum
INSERT INTO Tracks (Track_name, dept_id) VALUES ('History', 23);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Philosophy', 23);

-- For Education in Sharkia
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Primary Education', 24);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Secondary Education', 24);

-- For Physical Education in Sharkia
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Sports Coaching', 25);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Physical Therapy', 25);

-- For Food Science in Beheira
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Food Safety', 26);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Nutrition', 26);

-- For Biotechnology in Beheira
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Genetic Engineering', 27);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Bioinformatics', 27);

-- For Physics in Qena
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Theoretical Physics', 28);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Experimental Physics', 28);

-- For Chemistry in Qena
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Organic Chemistry', 29);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Inorganic Chemistry', 29);

-- For Mathematics in Gharbia
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Algebra', 30);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Calculus', 30);

-- For Statistics in Gharbia
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Probability Theory', 31);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Statistical Analysis', 31);

-- For Nursing in Minya
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Pediatric Nursing', 32);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Geriatric Nursing', 32);

-- For Pharmacy in Minya
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Clinical Pharmacy', 33);
INSERT INTO Tracks (Track_name, dept_id) VALUES ('Pharmaceutical Chemistry', 33);

alter table tracks 
alter column [Track_name] varchar(50) not null

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('John', 'Doe', 1),
('Alice', 'Brown', 1),
('David', 'Miller', 1),
('Jane', 'Smith', 2),
('Robert', 'White', 2),
('Sarah', 'Wilson', 2),
('Emily', 'Green', 3),
('Michael', 'Johnson', 3),
('Laura', 'Blue', 3),
('Daniel', 'Martinez', 4),
('Sophia', 'Davis', 4),
('James', 'Brown', 4),
('Emma', 'Anderson', 5),
('Henry', 'Thomas', 5),
('Olivia', 'Lopez', 5),
('John', 'Doe', 6),
('Alice', 'Brown', 6),
('David', 'Miller', 6),
('Jane', 'Smith', 7),
('Robert', 'White', 7),
('Sarah', 'Wilson', 7),
('Emily', 'Green', 8),
('Michael', 'Johnson', 8),
('Laura', 'Blue', 8),
('Daniel', 'Martinez', 9),
('Sophia', 'Davis', 9),
('James', 'Brown', 9),
('Emma', 'Anderson', 10),
('Henry', 'Thomas', 10),
('Olivia', 'Lopez', 10);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('Alice', 'Brown', 11),
('David', 'Miller', 11),
('Emily', 'Green', 11),
('John', 'Doe', 12),
('Michael', 'Johnson', 12),
('Laura', 'Blue', 12),
('Jane', 'Smith', 13),
('Robert', 'White', 13),
('Sarah', 'Wilson', 13),
('Daniel', 'Martinez', 14),
('Sophia', 'Davis', 14),
('James', 'Brown', 14),
('Emma', 'Anderson', 15),
('Henry', 'Thomas', 15),
('Olivia', 'Lopez', 15),
('John', 'Doe', 16),
('Alice', 'Brown', 16),
('David', 'Miller', 16),
('Jane', 'Smith', 17),
('Robert', 'White', 17),
('Sarah', 'Wilson', 17),
('Emily', 'Green', 18),
('Michael', 'Johnson', 18),
('Laura', 'Blue', 18),
('Daniel', 'Martinez', 19),
('Sophia', 'Davis', 19),
('James', 'Brown', 19),
('Emma', 'Anderson', 20),
('Henry', 'Thomas', 20),
('Olivia', 'Lopez', 20);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('John', 'Doe', 21),
('Alice', 'Brown', 21),
('David', 'Miller', 22),
('Jane', 'Smith', 22),
('Robert', 'White', 23),
('Sarah', 'Wilson', 23),
('Emily', 'Green', 24),
('Michael', 'Johnson', 24),
('Laura', 'Blue', 25),
('Daniel', 'Martinez', 25),
('Sophia', 'Davis', 26),
('James', 'Brown', 26),
('Emma', 'Anderson', 27),
('Henry', 'Thomas', 27),
('Olivia', 'Lopez', 28),
('John', 'Doe', 28),
('Alice', 'Brown', 29),
('David', 'Miller', 29),
('Jane', 'Smith', 30),
('Robert', 'White', 30);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('Sarah', 'Wilson', 31),
('Emily', 'Green', 31),
('Michael', 'Johnson', 32),
('Laura', 'Blue', 32),
('Daniel', 'Martinez', 33),
('Sophia', 'Davis', 33),
('James', 'Brown', 34),
('Emma', 'Anderson', 34),
('Henry', 'Thomas', 35),
('Olivia', 'Lopez', 35),
('John', 'Doe', 36),
('Alice', 'Brown', 36),
('David', 'Miller', 37),
('Jane', 'Smith', 37),
('Robert', 'White', 38),
('Sarah', 'Wilson', 38),
('Emily', 'Green', 39),
('Michael', 'Johnson', 39),
('Laura', 'Blue', 40),
('Daniel', 'Martinez', 40);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('Sophia', 'Davis', 41),
('James', 'Brown', 41),
('Emma', 'Anderson', 42),
('Henry', 'Thomas', 42),
('Olivia', 'Lopez', 43),
('John', 'Doe', 43),
('Alice', 'Brown', 44),
('David', 'Miller', 44),
('Jane', 'Smith', 45),
('Robert', 'White', 45),
('Sarah', 'Wilson', 46),
('Emily', 'Green', 46),
('Michael', 'Johnson', 47),
('Laura', 'Blue', 47),
('Daniel', 'Martinez', 48),
('Sophia', 'Davis', 48),
('James', 'Brown', 49),
('Emma', 'Anderson', 49),
('Henry', 'Thomas', 50),
('Olivia', 'Lopez', 50);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('John', 'Doe', 51),
('Alice', 'Brown', 51),
('David', 'Miller', 52),
('Jane', 'Smith', 52),
('Robert', 'White', 53),
('Sarah', 'Wilson', 53),
('Emily', 'Green', 54),
('Michael', 'Johnson', 54),
('Laura', 'Blue', 55),
('Daniel', 'Martinez', 55),
('Sophia', 'Davis', 56),
('James', 'Brown', 56),
('Emma', 'Anderson', 57),
('Henry', 'Thomas', 57),
('Olivia', 'Lopez', 58),
('John', 'Doe', 58),
('Alice', 'Brown', 59),
('David', 'Miller', 59),
('Jane', 'Smith', 60),
('Robert', 'White', 60);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('Sarah', 'Wilson', 61),
('Emily', 'Green', 61),
('Michael', 'Johnson', 62),
('Laura', 'Blue', 62),
('Daniel', 'Martinez', 63),
('Sophia', 'Davis', 63),
('James', 'Brown', 64),
('Emma', 'Anderson', 64),
('Henry', 'Thomas', 65),
('Olivia', 'Lopez', 65),
('John', 'Doe', 66),
('Alice', 'Brown', 66),
('David', 'Miller', 67),
('Jane', 'Smith', 67),
('Robert', 'White', 68),
('Sarah', 'Wilson', 68),
('Emily', 'Green', 69),
('Michael', 'Johnson', 69),
('Laura', 'Blue', 70),
('Daniel', 'Martinez', 70);

INSERT INTO Instructors (ins_fname, ins_lname, track_id) VALUES
('Sophia', 'Davis', 71),
('James', 'Brown', 71),
('Emma', 'Anderson', 72),
('Henry', 'Thomas', 72),
('Olivia', 'Lopez', 73),
('John', 'Doe', 73),
('Alice', 'Brown', 74),
('David', 'Miller', 74),
('Jane', 'Smith', 75),
('Robert', 'White', 75);


-- Inserting courses for each track

-- For Artificial Intelligence in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(1, 'Machine Learning', 'Introduction to machine learning algorithms and applications.', 100, 50, 1, 1),
(2, 'Deep Learning', 'Advanced concepts in neural networks and deep learning.', 100, 50, 2, 1),
(3, 'Natural Language Processing', 'Techniques for processing and analyzing human language.', 100, 50, 3, 1);

-- For Data Science in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(4, 'Data Analysis', 'Methods and tools for analyzing data.', 100, 50, 4, 2),
(5, 'Statistical Learning', 'Statistical methods and machine learning models.', 100, 50, 5, 2),
(6, 'Big Data Technologies', 'Technologies for handling and analyzing large datasets.', 100, 50, 6, 2);

-- For Cybersecurity in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(7, 'Network Security', 'Techniques for securing network communications.', 100, 50, 7, 3),
(8, 'Ethical Hacking', 'Introduction to ethical hacking and penetration testing.', 100, 50, 8, 3),
(9, 'Cryptography', 'Study of encryption and cryptographic protocols.', 100, 50, 9, 3);

-- For Network Administration in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(10, 'Network Configuration', 'Configuring and managing network devices.', 100, 50, 10, 4),
(11, 'Wireless Networks', 'Principles and practices of wireless network design.', 100, 50, 11, 4),
(12, 'Network Troubleshooting', 'Techniques for diagnosing and solving network issues.', 100, 50, 12, 4);

-- For Software Development in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(13, 'Programming Fundamentals', 'Basics of programming and software development.', 100, 50, 13, 5),
(14, 'Software Engineering', 'Principles of software design and development.', 100, 50, 14, 5),
(15, 'Web Development', 'Building and maintaining websites and web applications.', 100, 50, 15, 5);

-- For Cloud Computing in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(16, 'Cloud Services', 'Overview of cloud computing services and models.', 100, 50, 16, 6),
(17, 'Cloud Security', 'Security measures for cloud environments.', 100, 50, 17, 6),
(18, 'Cloud Architecture', 'Design and implementation of cloud solutions.', 100, 50, 18, 6);

-- Continue similarly for other tracks and courses

-- For Structural Engineering in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(19, 'Structural Analysis', 'Analyzing and designing structural systems.', 100, 50, 19, 7),
(20, 'Concrete Design', 'Design principles for concrete structures.', 100, 50, 20, 7),
(21, 'Steel Structures', 'Design and analysis of steel structures.', 100, 50, 21, 7);

-- For Geotechnical Engineering in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(22, 'Soil Mechanics', 'Study of soil properties and behavior.', 100, 50, 22, 8),
(23, 'Foundation Engineering', 'Design of foundation systems.', 100, 50, 23, 8),
(24, 'Slope Stability', 'Analysis and design of slope stability.', 100, 50, 24, 8);

-- For Transportation Engineering in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(25, 'Traffic Engineering', 'Study of traffic flow and management.', 100, 50, 25, 9),
(26, 'Highway Design', 'Design principles for highways and roadways.', 100, 50, 26, 9),
(27, 'Public Transport Systems', 'Planning and design of public transportation.', 100, 50, 27, 9);

-- For Thermodynamics in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(28, 'Basic Thermodynamics', 'Fundamental principles of thermodynamics.', 100, 50, 28, 10),
(29, 'Heat Transfer', 'Study of heat transfer mechanisms and applications.', 100, 50, 29, 10),
(30, 'Refrigeration and Air Conditioning', 'Principles of refrigeration and air conditioning systems.', 100, 50, 30, 10);

-- For Fluid Mechanics in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(31, 'Fluid Dynamics', 'Study of fluid motion and forces.', 100, 50, 31, 11),
(32, 'Hydraulic Engineering', 'Design and analysis of hydraulic systems.', 100, 50, 32, 11),
(33, 'Computational Fluid Dynamics', 'Numerical methods for fluid flow analysis.', 100, 50, 33, 11);

-- For Robotics in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(34, 'Robotic Systems', 'Design and control of robotic systems.', 100, 50, 34, 12),
(35, 'Automation', 'Automation technologies and applications.', 100, 50, 35, 12),
(36, 'Robot Kinematics', 'Study of robot motion and control.', 100, 50, 36, 12);

-- For Power Systems in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(37, 'Power Generation', 'Methods of generating electrical power.', 100, 50, 37, 13),
(38, 'Power Transmission', 'Design and operation of power transmission systems.', 100, 50, 38, 13),
(39, 'Power Distribution', 'Principles of electrical power distribution.', 100, 50, 39, 13);

-- For Control Systems in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(40, 'Control Theory', 'Fundamentals of control systems theory.', 100, 50, 40, 14),
(41, 'Digital Control Systems', 'Design and analysis of digital control systems.', 100, 50, 41, 14),
(42, 'Robust Control', 'Techniques for robust control system design.', 100, 50, 42, 14);

-- For Electronics in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(43, 'Circuit Analysis', 'Study of electronic circuits and components.', 100, 50, 43, 15),
(44, 'Digital Electronics', 'Design and analysis of digital electronic systems.', 100, 50, 44, 15),
(45, 'Analog Electronics', 'Study of analog electronic systems and devices.', 100, 50, 45, 15);

-- For Urban Design in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(46, 'Urban Planning', 'Principles and methods of urban planning.', 100, 50, 46, 16),
(47, 'Landscape Design', 'Design of urban landscapes and public spaces.', 100, 50, 47, 16),
(48, 'Sustainable Urban Design', 'Design strategies for sustainable urban development.', 100, 50, 48, 16);

-- For Landscape Architecture in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(49, 'Landscape Architecture Design', 'Principles of landscape design and planning.', 100, 50, 49, 17),
(50, 'Urban Green Spaces', 'Design and management of urban green spaces.', 100, 50, 50, 17),
(51, 'Ecological Landscape Design', 'Design methods incorporating ecological principles.', 100, 50, 51, 17);

-- For Interior Design in Alexandria
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(52, 'Interior Design Basics', 'Fundamentals of interior design principles.', 100, 50, 52, 18),
(53, 'Space Planning', 'Techniques for effective space utilization.', 100, 50, 53, 18),
(54, 'Lighting Design', 'Design and application of lighting in interior spaces.', 100, 50, 54, 18);

-- For Human Resources in Giza
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(55, 'HR Management', 'Principles and practices of human resource management.', 100, 50, 55, 19),
(56, 'Organizational Behavior', 'Study of individual and group behavior in organizations.', 100, 50, 56, 19),
(57, 'Talent Management', 'Strategies for managing and developing talent.', 100, 50, 57, 19);

-- For Finance in Giza
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(58, 'Financial Analysis', 'Techniques for analyzing financial statements and performance.', 100, 50, 58, 20),
(59, 'Investment Management', 'Principles of investment and portfolio management.', 100, 50, 59, 20),
(60, 'Corporate Finance', 'Corporate financial management strategies and practices.', 100, 50, 60, 20);

-- Corrected Instructor Assignments

-- For Track 21 (Operations Management) in Giza
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(61, 'Operations Strategy', 'Development and implementation of operations strategies.', 100, 50, 61, 21),
(62, 'Supply Chain Management', 'Managing and optimizing supply chains.', 100, 50, 62, 21);

-- For Track 22 (Digital Marketing) in Giza
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(64, 'SEO and SEM', 'Search engine optimization and marketing strategies.', 100, 50, 63, 22),
(65, 'Content Marketing', 'Creating and managing content marketing strategies.', 100, 50, 64, 22);

-- Adjusted for Track 22 (Marketing) with only 2 instructors
-- No additional course needed as Track 22 has only 2 instructors

-- For Track 23 (Brand Management) in Giza
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(66, 'Brand Development', 'Strategies for developing and managing brands.', 100, 50, 65, 23),
(67, 'Brand Equity Management', 'Techniques for measuring and enhancing brand equity.', 100, 50, 66, 23);

-- For Track 24 (Naval Architecture) in Port Said
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(68, 'Ship Design', 'Design principles for ships and marine vessels.', 100, 50, 67, 24),
(69, 'Marine Hydrodynamics', 'Study of fluid dynamics as applied to marine vehicles.', 100, 50, 68, 24);

-- For Track 25 (Supply Chain Management) in Port Said
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(70, 'Supply Chain Logistics', 'Management of logistics within supply chains.', 100, 50, 69, 25),
(71, 'Inventory Management', 'Strategies for managing and optimizing inventory.', 100, 50, 70, 25);

-- For Track 26 (Reservoir Engineering) in Suez
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(72, 'Reservoir Simulation', 'Modeling and simulation of oil and gas reservoirs.', 100, 50, 71, 26),
(73, 'Enhanced Oil Recovery', 'Techniques for increasing oil recovery from reservoirs.', 100, 50, 72, 26);

-- For Track 27 (Process Design) in Suez
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(74, 'Chemical Process Design', 'Design of chemical processing systems.', 100, 50, 73, 27),
(75, 'Process Optimization', 'Techniques for optimizing chemical processes.', 100, 50, 74, 27);

-- For Track 28 (Hotel Management) in Luxor
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(76, 'Hotel Operations', 'Management and operations of hotels.', 100, 50, 75, 28),
(77, 'Guest Services', 'Enhancing guest services and experience.', 100, 50, 76, 28);

-- For Track 29 (Tour Operations) in Luxor
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(78, 'Tour Planning', 'Strategies for planning and organizing tours.', 100, 50, 77, 29),
(79, 'Destination Management', 'Management of tourism destinations.', 100, 50, 78, 29);

-- For Track 30 (Solar Energy) in Aswan
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(80, 'Solar Panel Design', 'Design and implementation of solar panels.', 100, 50, 79, 30),
(81, 'Solar Energy Systems', 'Systems for harnessing and using solar energy.', 100, 50, 80, 30);

-- For Track 31 (Hydrology) in Aswan
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(82, 'Hydrological Modeling', 'Modeling of hydrological processes and systems.', 100, 50, 81, 31),
(83, 'Water Resources Management', 'Management of water resources and sustainability.', 100, 50, 82, 31);

-- For Track 32 (Crop Science) in Asyut
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(84, 'Crop Production', 'Techniques and practices in crop production.', 100, 50, 83, 32),
(85, 'Soil Fertility', 'Management of soil fertility for crop growth.', 100, 50, 84, 32);

-- For Track 33 (Animal Health) in Asyut
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(86, 'Veterinary Diagnostics', 'Techniques for diagnosing animal diseases.', 100, 50, 85, 33),
(87, 'Animal Nutrition', 'Nutrition management for livestock and pets.', 100, 50, 86, 33);

-- For Track 34 (Aquaculture) in Ismailia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(88, 'Fish Farming', 'Techniques and management of fish farming.', 100, 50, 87, 34),
(89, 'Aquatic Health Management', 'Managing the health of aquatic species.', 100, 50, 88, 34);

-- For Track 35 (Pollution Control) in Ismailia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(90, 'Environmental Regulations', 'Understanding and implementing environmental regulations.', 100, 50, 89, 35),
(91, 'Pollution Abatement Technologies', 'Technologies for reducing pollution.', 100, 50, 90, 35);

-- For Track 36 (Sociology) in Faiyum
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(92, 'Social Theory', 'Exploration of key social theories and concepts.', 100, 50, 91, 36),
(93, 'Research Methods', 'Methods for conducting social research.', 100, 50, 92, 36);

-- For Track 37 (History) in Faiyum
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(94, 'Ancient Civilizations', 'Study of ancient civilizations and their histories.', 100, 50, 93, 37),
(95, 'Modern History', 'Study of modern historical events and figures.', 100, 50, 94, 37);

-- For Track 38 (Primary Education) in Sharkia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(96, 'Curriculum Development', 'Creating and implementing primary education curricula.', 100, 50, 95, 38),
(97, 'Classroom Management', 'Techniques for managing primary school classrooms.', 100, 50, 96, 38);

-- For Track 39 (Sports Coaching) in Sharkia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(98, 'Coaching Techniques', 'Methods and strategies for effective coaching.', 100, 50, 97, 39),
(99, 'Athlete Development', 'Programs for developing athletic skills and performance.', 100, 50, 98, 39);

-- For Track 40 (Food Safety) in Beheira
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(100, 'Food Safety Standards', 'Understanding and implementing food safety standards.', 100, 50, 99, 40),
(101, 'Food Quality Control', 'Techniques for controlling and improving food quality.', 100, 50, 100, 40);

-- For Track 41 (Genetic Engineering) in Beheira
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(102, 'Genetic Modification Techniques', 'Techniques for modifying genetic material.', 100, 50, 101, 41),
(103, 'Ethics in Genetic Engineering', 'Ethical considerations in genetic engineering.', 100, 50, 102, 41);

-- For Track 42 (Public Health) in Gharbia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(104, 'Epidemiology', 'Study of disease distribution and determinants in populations.', 100, 50, 103, 42),
(105, 'Health Policy', 'Development and analysis of health policies.', 100, 50, 104, 42);

-- For Track 43 (Environmental Science) in Gharbia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(106, 'Environmental Impact Assessment', 'Methods for assessing environmental impacts.', 100, 50, 105, 43),
(107, 'Sustainable Development', 'Principles and practices for sustainable development.', 100, 50, 106, 43);

-- For Track 44 (Energy Systems) in Dakahlia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(108, 'Renewable Energy Systems', 'Systems and technologies for renewable energy.', 100, 50, 107, 44),
(109, 'Energy Efficiency', 'Techniques for improving energy efficiency.', 100, 50, 108, 44);

-- For Track 45 (Mechanical Engineering) in Dakahlia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(110, 'Thermodynamics', 'Principles of thermodynamics and their applications.', 100, 50, 109, 45),
(111, 'Mechanical Design', 'Design principles for mechanical systems and components.', 100, 50, 110, 45);

-- For Track 46 (Civil Engineering) in Qalyubia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(112, 'Structural Analysis', 'Techniques for analyzing structures in civil engineering.', 100, 50, 111, 46),
(113, 'Construction Management', 'Management techniques for construction projects.', 100, 50, 112, 46);

-- For Track 47 (Architecture) in Qalyubia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(114, 'Architectural Design', 'Principles and practices of architectural design.', 100, 50, 113, 47),
(115, 'Urban Planning', 'Techniques for planning and developing urban areas.', 100, 50, 114, 47);

-- For Track 48 (Telecommunications) in Kafr El Sheikh
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(116, 'Wireless Communication', 'Techniques and technologies in wireless communication.', 100, 50, 115, 48),
(117, 'Network Design', 'Design and management of telecommunication networks.', 100, 50, 116, 48);

-- For Track 49 (Software Engineering) in Kafr El Sheikh
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(118, 'Software Development Lifecycle', 'Phases and processes in software development.', 100, 50, 117, 49),
(119, 'Project Management for Software', 'Management techniques specific to software projects.', 100, 50, 118, 49);

-- For Track 50 (Database Systems) in Menoufia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(120, 'Database Design', 'Design principles and techniques for databases.', 100, 50, 119, 50),
(121, 'Data Warehousing', 'Techniques for data warehousing and management.', 100, 50, 120, 50);

-- For Track 51 (Artificial Intelligence) in Menoufia
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(122, 'Machine Learning', 'Introduction to machine learning algorithms and techniques.', 100, 50, 121, 51),
(123, 'Natural Language Processing', 'Techniques for processing and understanding human language.', 100, 50, 122, 51);

-- For Track 52 (Data Science) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(124, 'Data Analysis', 'Techniques for analyzing and interpreting data.', 100, 50, 123, 52),
(125, 'Big Data Technologies', 'Technologies for managing and analyzing large data sets.', 100, 50, 124, 52);

-- For Track 53 (Cybersecurity) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(126, 'Network Security', 'Techniques for securing network systems.', 100, 50, 125, 53),
(127, 'Ethical Hacking', 'Methods for testing and securing systems through ethical hacking.', 100, 50, 126, 53);

-- For Track 54 (Computer Graphics) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg,ins_id,track_id) VALUES
(128, '2D Graphics Design', 'Design and development of 2D graphics.', 100, 50, 127, 54),
(129, '3D Modeling', 'Techniques for creating 3D models and animations.', 100, 50, 128, 54);

-- For Track 55 (Game Development) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(130, 'Game Design Principles', 'Fundamentals of game design and development.', 100, 50, 129, 55),
(131, 'Game Programming', 'Programming techniques for game development.', 100, 50, 130, 55);

-- For Track 56 (Virtual Reality) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(132, 'VR Systems and Design', 'Design and development of virtual reality systems.', 100, 50, 131, 56),
(133, 'Interactive VR Experiences', 'Creating interactive experiences in virtual reality.', 100, 50, 132, 56);

-- For Track 57 (Augmented Reality) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(134, 'AR Technology and Applications', 'Technologies and applications of augmented reality.', 100, 50, 133, 57),
(135, 'AR Development Tools', 'Tools and techniques for developing augmented reality applications.', 100, 50, 134, 57);

-- For Track 58 (Embedded Systems) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(136, 'Embedded System Design', 'Design and development of embedded systems.', 100, 50, 135, 58),
(137, 'Real-Time Operating Systems', 'Understanding and using real-time operating systems.', 100, 50, 136, 58);

-- For Track 59 (IoT) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(138, 'IoT Architecture', 'Architecture and design principles for IoT systems.', 100, 50, 137, 59),
(139, 'IoT Protocols and Standards', 'Protocols and standards used in IoT communication.', 100, 50, 138, 59);

-- For Track 60 (Smart Cities) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(140, 'Smart City Technologies', 'Technologies and systems used in smart cities.', 100, 50, 139, 60),
(141, 'Urban Data Analytics', 'Analyzing data for smart city applications.', 100, 50, 140, 60);

-- For Track 61 (Digital Marketing) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(142, 'Digital Marketing Strategies', 'Strategies for effective digital marketing.', 100, 50, 141, 61),
(143, 'Social Media Marketing', 'Techniques for marketing through social media platforms.', 100, 50, 142, 61);

-- For Track 62 (Content Creation) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(144, 'Content Writing', 'Techniques and best practices for content writing.', 100, 50, 143, 62),
(145, 'Video Production', 'Principles and techniques for video content creation.', 100, 50, 144, 62);

-- For Track 63 (Graphic Design) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(146, 'Visual Design', 'Principles of visual design and aesthetics.', 100, 50, 145, 63),
(147, 'Design Software', 'Tools and software for graphic design.', 100, 50, 146, 63);

-- For Track 64 (UI/UX Design) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(148, 'UI Design Principles', 'Design principles for user interfaces.', 100, 50, 147, 64),
(149, 'UX Research Methods', 'Research methods for understanding user experience.', 100, 50, 148, 64);

-- For Track 65 (Human-Computer Interaction) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(150, 'Interaction Design', 'Designing interactions between users and computer systems.', 100, 50, 149, 65),
(151, 'User Experience Evaluation', 'Evaluating user experience in interactive systems.', 100, 50, 150, 65);

-- For Track 66 (Health Informatics) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(152, 'Health Data Management', 'Managing health data and electronic health records.', 100, 50, 151, 66),
(153, 'Healthcare IT Systems', 'Information systems used in healthcare settings.', 100, 50, 152, 66);

-- For Track 67 (Medical Imaging) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(154, 'Medical Imaging Techniques', 'Techniques and technologies for medical imaging.', 100, 50, 153, 67),
(155, 'Image Analysis in Medicine', 'Analyzing medical images for diagnostic purposes.', 100, 50, 154, 67);

-- For Track 68 (Genomics) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(156, 'Genomic Data Analysis', 'Techniques for analyzing genomic data.', 100, 50, 155, 68),
(157, 'Genomic Technologies', 'Technologies and methods used in genomics.', 100, 50, 156, 68);

-- For Track 69 (Biotechnology) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(158, 'Biotechnology Applications', 'Applications and innovations in biotechnology.', 100, 50, 157, 69),
(159, 'Biotech Product Development', 'Development and commercialization of biotech products.', 100, 50, 158, 69);

-- For Track 70 (Pharmaceutical Sciences) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(160, 'Pharmaceutical Chemistry', 'Chemistry involved in drug development.', 100, 50, 159, 70),
(161, 'Pharmacology', 'Study of drug interactions and effects.', 100, 50, 160, 70);

-- For Track 71 (Clinical Research) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(162, 'Clinical Trials Management', 'Managing and conducting clinical trials.', 100, 50, 161, 71),
(163, 'Research Methodology', 'Methodological approaches to clinical research.', 100, 50, 162, 71);

-- For Track 72 (Public Health Administration) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(164, 'Health Program Management', 'Management of public health programs and services.', 100, 50, 163, 72),
(165, 'Healthcare Policy and Planning', 'Planning and development of healthcare policies.', 100, 50, 164, 72);

-- For Track 73 (Health Economics) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(166, 'Economic Evaluation of Health Programs', 'Evaluating the economic impact of health programs.', 100, 50, 165, 73),
(167, 'Healthcare Financing', 'Techniques for financing and managing healthcare systems.', 100, 50, 166, 73);

-- For Track 74 (Epidemiology) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(168, 'Epidemiological Research Methods', 'Research methods and designs in epidemiology.', 100, 50, 167, 74),
(169, 'Disease Surveillance', 'Techniques for monitoring and controlling diseases.', 100, 50, 168, 74);

-- For Track 75 (Bioinformatics) in Cairo
INSERT INTO Course (Crs_id, Crs_name, Crs_Description, Crs_Max_Deg, Crs_Min_Deg, ins_id, track_id) VALUES
(170, 'Bioinformatics Algorithms', 'Algorithms used in bioinformatics analysis.', 100, 50, 169, 75),
(171, 'Genomic Data Interpretation', 'Interpreting and analyzing genomic data.', 100, 50, 170, 75);

alter table course
alter column [Crs_name] varchar(100) not null
alter table course
alter column [Crs_Description] varchar(100) not null


drop table [dbo].[branch_track]


-- Data for Course 1
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of France?', 'MCQ', 1),
('Which of the following is a prime number?', 'MCQ', 1),
('What is the chemical symbol for water?', 'MCQ', 1),
('Which planet is known as the Red Planet?', 'MCQ', 1),
('What is the powerhouse of the cell?', 'MCQ', 1),
('Who wrote "To Kill a Mockingbird"?', 'MCQ', 1),
('What is the largest ocean on Earth?', 'MCQ', 1),
('What is the speed of light?', 'MCQ', 1),
('Which element has the atomic number 1?', 'MCQ', 1),
('What is the boiling point of water?', 'MCQ', 1),
('Who painted the Mona Lisa?', 'MCQ', 1),
('What is the formula for calculating force?', 'MCQ', 1),
('Which gas do plants need for photosynthesis?', 'MCQ', 1),
('What is the largest planet in our solar system?', 'MCQ', 1),
('What is the name of our galaxy?', 'MCQ', 1);

-- Data for Course 2
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the chemical symbol for gold?', 'MCQ', 2),
('Who is known as the father of computers?', 'MCQ', 2),
('What is the process by which plants make their own food?', 'MCQ', 2),
('What is the capital of Japan?', 'MCQ', 2),
('Which planet is known for its rings?', 'MCQ', 2),
('What is the hardest natural substance on Earth?', 'MCQ', 2),
('Who discovered penicillin?', 'MCQ', 2),
('What is the currency used in the United Kingdom?', 'MCQ', 2),
('What is the chemical symbol for sodium?', 'MCQ', 2),
('Which planet is closest to the Sun?', 'MCQ', 2),
('What is the freezing point of water?', 'MCQ', 2),
('Who wrote "Pride and Prejudice"?', 'MCQ', 2),
('What is the formula for the area of a circle?', 'MCQ', 2),
('Which organ in the human body is responsible for pumping blood?', 'MCQ', 2),
('What is the smallest unit of life?', 'MCQ', 2);

-- Data for Course 3
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Italy?', 'MCQ', 3),
('Which element is represented by the symbol "Fe"?', 'MCQ', 3),
('Who developed the theory of relativity?', 'MCQ', 3),
('What is the largest organ in the human body?', 'MCQ', 3),
('Which planet is known as the "morning star"?', 'MCQ', 3),
('What is the main language spoken in Brazil?', 'MCQ', 3),
('What is the chemical symbol for potassium?', 'MCQ', 3),
('Who wrote "1984"?', 'MCQ', 3),
('What is the process by which cells divide?', 'MCQ', 3),
('Which gas is most abundant in the Earths atmosphere?', 'MCQ', 3),
('What is the currency used in Japan?', 'MCQ', 3),
('What is the primary function of the liver?', 'MCQ', 3),
('Who is known as the "Father of Geometry"?', 'MCQ', 3),
('What is the speed of sound?', 'MCQ', 3),
('What is the chemical formula for salt?', 'MCQ', 3);

-- Data for Course 4
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Germany?', 'MCQ', 4),
('Who painted the Starry Night?', 'MCQ', 4),
('What is the chemical symbol for carbon?', 'MCQ', 4),
('Which planet is known as the "gas giant"?', 'MCQ', 4),
('What is the hardest substance in the human body?', 'MCQ', 4),
('Who invented the telephone?', 'MCQ', 4),
('What is the chemical symbol for helium?', 'MCQ', 4),
('What is the primary ingredient in bread?', 'MCQ', 4),
('Who wrote "The Great Gatsby"?', 'MCQ', 4),
('What is the currency used in the USA?', 'MCQ', 4),
('What is the process by which plants absorb water?', 'MCQ', 4),
('What is the freezing point of nitrogen?', 'MCQ', 4),
('Who developed the polio vaccine?', 'MCQ', 4),
('What is the name of the process by which water evaporates?', 'MCQ', 4),
('What is the chemical symbol for oxygen?', 'MCQ', 4);

-- Data for Course 5
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Spain?', 'MCQ', 5),
('Who is known for the theory of evolution?', 'MCQ', 5),
('What is the chemical symbol for silver?', 'MCQ', 5),
('Which planet is known as the "Red Giant"?', 'MCQ', 5),
('What is the name of the process by which plants make food?', 'MCQ', 5),
('What is the capital of Australia?', 'MCQ', 5),
('Who is known as the "Father of Modern Physics"?', 'MCQ', 5),
('What is the currency used in Canada?', 'MCQ', 5),
('What is the chemical symbol for iron?', 'MCQ', 5),
('What is the name of the largest desert on Earth?', 'MCQ', 5),
('Who wrote "Moby Dick"?', 'MCQ', 5),
('What is the chemical formula for glucose?', 'MCQ', 5),
('What is the capital of Canada?', 'MCQ', 5),
('Who invented the light bulb?', 'MCQ', 5),
('What is the main component of the human brain?', 'MCQ', 5);

-- Data for Course 6
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Greece?', 'MCQ', 6),
('What is the chemical symbol for copper?', 'MCQ', 6),
('Who is known for developing the theory of natural selection?', 'MCQ', 6),
('What is the main function of the respiratory system?', 'MCQ', 6),
('Which planet has the most moons?', 'MCQ', 6),
('What is the chemical symbol for mercury?', 'MCQ', 6),
('Who wrote "War and Peace"?', 'MCQ', 6),
('What is the currency used in China?', 'MCQ', 6),
('What is the boiling point of helium?', 'MCQ', 6),
('What is the primary function of the kidneys?', 'MCQ', 6),
('Who is known as the "Father of Evolution"?', 'MCQ', 6),
('What is the chemical symbol for zinc?', 'MCQ', 6),
('What is the currency used in Russia?', 'MCQ', 6),
('What is the name of the process by which plants lose water?', 'MCQ', 6),
('Who discovered the structure of DNA?', 'MCQ', 6);

-- Data for Course 7
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Brazil?', 'MCQ', 7),
('What is the chemical symbol for calcium?', 'MCQ', 7),
('Who is known for the theory of general relativity?', 'MCQ', 7),
('What is the largest land animal?', 'MCQ', 7),
('Which planet is known for its beautiful rings?', 'MCQ', 7),
('What is the chemical formula for ammonia?', 'MCQ', 7),
('Who wrote "Les Misérables"?', 'MCQ', 7),
('What is the primary language spoken in Argentina?', 'MCQ', 7),
('What is the name of the process by which plants absorb sunlight?', 'MCQ', 7),
('What is the boiling point of sulfur?', 'MCQ', 7),
('Who is known for the discovery of radioactivity?', 'MCQ', 7),
('What is the chemical symbol for tin?', 'MCQ', 7),
('What is the capital of Egypt?', 'MCQ', 7),
('Who invented the first airplane?', 'MCQ', 7),
('What is the largest organ in the human body?', 'MCQ', 7);

-- Data for Course 8
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of India?', 'MCQ', 8),
('What is the chemical symbol for sulfur?', 'MCQ', 8),
('Who developed the theory of gravity?', 'MCQ', 8),
('What is the process by which cells divide?', 'MCQ', 8),
('Which planet is known as the "Earth’s twin"?', 'MCQ', 8),
('What is the primary component of the human body?', 'MCQ', 8),
('Who wrote "The Catcher in the Rye"?', 'MCQ', 8),
('What is the currency used in India?', 'MCQ', 8),
('What is the chemical formula for carbon dioxide?', 'MCQ', 8),
('What is the capital of Mexico?', 'MCQ', 8),
('Who invented the microscope?', 'MCQ', 8),
('What is the primary function of the digestive system?', 'MCQ', 8),
('What is the chemical symbol for potassium?', 'MCQ', 8),
('Who is known for the law of universal gravitation?', 'MCQ', 8),
('What is the capital of Argentina?', 'MCQ', 8);

-- Data for Course 9
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Turkey?', 'MCQ', 9),
('What is the chemical symbol for chlorine?', 'MCQ', 9),
('Who is known for the laws of motion?', 'MCQ', 9),
('What is the primary function of the skeletal system?', 'MCQ', 9),
('Which planet is known as the "Blue Planet"?', 'MCQ', 9),
('What is the name of the process by which water is purified?', 'MCQ', 9),
('Who wrote "The Odyssey"?', 'MCQ', 9),
('What is the currency used in South Korea?', 'MCQ', 9),
('What is the chemical formula for table sugar?', 'MCQ', 9),
('What is the boiling point of ethanol?', 'MCQ', 9),
('Who is known for the invention of the television?', 'MCQ', 9),
('What is the primary function of the circulatory system?', 'MCQ', 9),
('What is the capital of South Africa?', 'MCQ', 9),
('Who wrote "The Divine Comedy"?', 'MCQ', 9),
('What is the chemical symbol for magnesium?', 'MCQ', 9);

-- Data for Course 10
INSERT INTO Questions (Question, Ques_type, crs_id)
VALUES
('What is the capital of Sweden?', 'MCQ', 10),
('What is the chemical symbol for platinum?', 'MCQ', 10),
('Who developed the theory of evolution by natural selection?', 'MCQ', 10),
('What is the largest mammal in the world?', 'MCQ', 10),
('Which planet is known for its large storm system?', 'MCQ', 10),
('What is the chemical formula for methane?', 'MCQ', 10),
('Who wrote "The Iliad"?', 'MCQ', 10),
('What is the capital of Norway?', 'MCQ', 10),
('What is the primary function of the nervous system?', 'MCQ', 10),
('What is the boiling point of mercury?', 'MCQ', 10),
('Who is known for the discovery of insulin?', 'MCQ', 10),
('What is the currency used in Norway?', 'MCQ', 10),
('What is the capital of Finland?', 'MCQ', 10),
('Who invented the first computer?', 'MCQ', 10),
('What is the chemical symbol for lead?', 'MCQ', 10);


-- Choices for Course 1
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(1, 'Paris', 1),
(1, 'London', 0),
(1, 'Berlin', 0),
(1, 'Madrid', 0),

(2, '2', 1),
(2, '4', 0),
(2, '6', 0),
(2, '8', 0),

(3, 'H2O', 1),
(3, 'CO2', 0),
(3, 'NaCl', 0),
(3, 'O2', 0),

(4, 'Mars', 1),
(4, 'Venus', 0),
(4, 'Jupiter', 0),
(4, 'Saturn', 0),

(5, 'Mitochondria', 1),
(5, 'Nucleus', 0),
(5, 'Ribosome', 0),
(5, 'Golgi Apparatus', 0),

(6, 'Harper Lee', 1),
(6, 'Mark Twain', 0),
(6, 'J.K. Rowling', 0),
(6, 'Ernest Hemingway', 0),

(7, 'Pacific Ocean', 1),
(7, 'Atlantic Ocean', 0),
(7, 'Indian Ocean', 0),
(7, 'Arctic Ocean', 0),

(8, '299,792 km/s', 1),
(8, '150,000 km/s', 0),
(8, '300,000 km/s', 0),
(8, '250,000 km/s', 0),

(9, 'Hydrogen', 1),
(9, 'Oxygen', 0),
(9, 'Carbon', 0),
(9, 'Nitrogen', 0),

(10, '100°C', 1),
(10, '90°C', 0),
(10, '80°C', 0),
(10, '70°C', 0),

(11, 'Leonardo da Vinci', 1),
(11, 'Vincent van Gogh', 0),
(11, 'Pablo Picasso', 0),
(11, 'Claude Monet', 0),

(12, 'F = m * a', 1),
(12, 'E = mc^2', 0),
(12, 'v = u + at', 0),
(12, 'p = mv', 0),

(13, 'Carbon Dioxide', 1),
(13, 'Oxygen', 0),
(13, 'Nitrogen', 0),
(13, 'Hydrogen', 0),

(14, 'Jupiter', 1),
(14, 'Saturn', 0),
(14, 'Earth', 0),
(14, 'Neptune', 0),

(15, 'Milky Way', 1),
(15, 'Andromeda', 0),
(15, 'Triangulum', 0),
(15, 'Whirlpool', 0);

-- Choices for Course 2
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(16, 'Au', 1),
(16, 'Ag', 0),
(16, 'Pb', 0),
(16, 'Fe', 0),

(17, 'Charles Babbage', 1),
(17, 'Alan Turing', 0),
(17, 'John von Neumann', 0),
(17, 'Ada Lovelace', 0),

(18, 'Photosynthesis', 1),
(18, 'Respiration', 0),
(18, 'Transpiration', 0),
(18, 'Digestion', 0),

(19, 'Tokyo', 1),
(19, 'Beijing', 0),
(19, 'Seoul', 0),
(19, 'Bangkok', 0),

(20, 'Saturn', 1),
(20, 'Jupiter', 0),
(20, 'Uranus', 0),
(20, 'Neptune', 0),

(21, 'Diamond', 1),
(21, 'Gold', 0),
(21, 'Platinum', 0),
(21, 'Silver', 0),

(22, 'Alexander Fleming', 1),
(22, 'Louis Pasteur', 0),
(22, 'Robert Koch', 0),
(22, 'Paul Ehrlich', 0),

(23, 'Pound Sterling', 1),
(23, 'Euro', 0),
(23, 'Dollar', 0),
(23, 'Yen', 0),

(24, 'Na', 1),
(24, 'K', 0),
(24, 'Ca', 0),
(24, 'Mg', 0),

(25, 'Mercury', 1),
(25, 'Sulfur', 0),
(25, 'Lead', 0),
(25, 'Zinc', 0),

(26, 'William Shakespeare', 1),
(26, 'Jane Austen', 0),
(26, 'Charles Dickens', 0),
(26, 'Mark Twain', 0),

(27, 'Water', 1),
(27, 'Oxygen', 0),
(27, 'Nitrogen', 0),
(27, 'Hydrogen', 0),

(28, 'Heart', 1),
(28, 'Lung', 0),
(28, 'Liver', 0),
(28, 'Kidney', 0),

(29, 'Euclid', 1),
(29, 'Archimedes', 0),
(29, 'Pythagoras', 0),
(29, 'Hippocrates', 0),

(30, '343 m/s', 1),
(30, '299,792 km/s', 0),
(30, '1,000 m/s', 0),
(30, '500 m/s', 0),

(31, 'NaCl', 1),
(31, 'H2O', 0),
(31, 'CO2', 0),
(31, 'O2', 0);

-- Choices for Course 3
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(32, 'Rome', 1),
(32, 'Athens', 0),
(32, 'Paris', 0),
(32, 'Berlin', 0),

(33, 'Iron', 1),
(33, 'Gold', 0),
(33, 'Silver', 0),
(33, 'Copper', 0),

(34, 'Albert Einstein', 1),
(34, 'Isaac Newton', 0),
(34, 'Galileo Galilei', 0),
(34, 'Niels Bohr', 0),

(35, 'Skin', 1),
(35, 'Liver', 0),
(35, 'Heart', 0),
(35, 'Lung', 0),

(36, 'Venus', 1),
(36, 'Mars', 0),
(36, 'Saturn', 0),
(36, 'Jupiter', 0),

(37, 'Portuguese', 1),
(37, 'Spanish', 0),
(37, 'French', 0),
(37, 'Italian', 0),

(38, 'K', 1),
(38, 'Na', 0),
(38, 'Cl', 0),
(38, 'Mg', 0),

(39, 'George Orwell', 1),
(39, 'Aldous Huxley', 0),
(39, 'J.K. Rowling', 0),
(39, 'Ernest Hemingway', 0),

(40, 'Mitosis', 1),
(40, 'Meiosis', 0),
(40, 'Cytokinesis', 0),
(40, 'Binary Fission', 0),

(41, 'Nitrogen', 1),
(41, 'Oxygen', 0),
(41, 'Carbon Dioxide', 0),
(41, 'Hydrogen', 0),

(42, 'Euro', 1),
(42, 'Dollar', 0),
(42, 'Pound Sterling', 0),
(42, 'Yen', 0),

(43, 'Function of Liver', 1),
(43, 'Production of Red Blood Cells', 0),
(43, 'Production of Insulin', 0),
(43, 'Production of Enzymes', 0),

(44, 'Pythagoras', 1),
(44, 'Euclid', 0),
(44, 'Archimedes', 0),
(44, 'Hippocrates', 0),

(45, '1235 km/s', 1),
(45, '343 m/s', 0),
(45, '1500 km/s', 0),
(45, '2300 km/s', 0),

(46, 'CO2', 1),
(46, 'O2', 0),
(46, 'N2', 0),
(46, 'H2', 0);

-- Choices for Course 4
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(47, 'Berlin', 1),
(47, 'Vienna', 0),
(47, 'Brussels', 0),
(47, 'Copenhagen', 0),

(48, 'Carl Friedrich Gauss', 1),
(48, 'Isaac Newton', 0),
(48, 'Leonhard Euler', 0),
(48, 'Pythagoras', 0),

(49, '5000', 1),
(49, '10000', 0),
(49, '15000', 0),
(49, '20000', 0),

(50, 'Fahrenheit', 1),
(50, 'Celsius', 0),
(50, 'Kelvin', 0),
(50, 'Rankine', 0),

(51, 'Ecosystem', 1),
(51, 'Biome', 0),
(51, 'Habitat', 0),
(51, 'Community', 0),

(52, 'Magnesium', 1),
(52, 'Potassium', 0),
(52, 'Calcium', 0),
(52, 'Sodium', 0),

(53, 'Daniel Defoe', 1),
(53, 'Jonathan Swift', 0),
(53, 'William Golding', 0),
(53, 'H.G. Wells', 0),

(54, 'Aurora Borealis', 1),
(54, 'Aurora Australis', 0),
(54, 'Northern Lights', 0),
(54, 'Southern Lights', 0),

(55, 'Carbon', 1),
(55, 'Oxygen', 0),
(55, 'Hydrogen', 0),
(55, 'Nitrogen', 0),

(56, 'Ginger', 1),
(56, 'Garlic', 0),
(56, 'Onion', 0),
(56, 'Pepper', 0),

(57, 'Stephen Hawking', 1),
(57, 'Richard Feynman', 0),
(57, 'Carl Sagan', 0),
(57, 'Neil deGrasse Tyson', 0),

(58, 'Athens', 1),
(58, 'Rome', 0),
(58, 'Cairo', 0),
(58, 'Jerusalem', 0),

(59, 'Aquarius', 1),
(59, 'Gemini', 0),
(59, 'Virgo', 0),
(59, 'Scorpio', 0),

(60, 'Pluto', 1),
(60, 'Mars', 0),
(60, 'Saturn', 0),
(60, 'Venus', 0);

-- Choices for Course 5
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(61, 'Socrates', 1),
(61, 'Plato', 0),
(61, 'Aristotle', 0),
(61, 'Pythagoras', 0),

(62, 'Calcium', 1),
(62, 'Potassium', 0),
(62, 'Magnesium', 0),
(62, 'Sodium', 0),

(63, 'Newton', 1),
(63, 'Einstein', 0),
(63, 'Galileo', 0),
(63, 'Hawking', 0),

(64, 'Homer', 1),
(64, 'Hesiod', 0),
(64, 'Virgil', 0),
(64, 'Ovid', 0),

(65, 'Hydrogen', 1),
(65, 'Helium', 0),
(65, 'Lithium', 0),
(65, 'Beryllium', 0),

(66, 'Ottawa', 1),
(66, 'Toronto', 0),
(66, 'Vancouver', 0),
(66, 'Montreal', 0),

(67, 'J.K. Rowling', 1),
(67, 'J.R.R. Tolkien', 0),
(67, 'George R.R. Martin', 0),
(67, 'C.S. Lewis', 0),

(68, 'Venus', 1),
(68, 'Mercury', 0),
(68, 'Mars', 0),
(68, 'Earth', 0),

(69, 'Diamond', 1),
(69, 'Gold', 0),
(69, 'Silver', 0),
(69, 'Platinum', 0),

(70, 'Oxygen', 1),
(70, 'Carbon', 0),
(70, 'Nitrogen', 0),
(70, 'Hydrogen', 0),

(71, 'Ammonia', 1),
(71, 'Methane', 0),
(71, 'Ethane', 0),
(71, 'Propane', 0),

(72, 'Ruby', 1),
(72, 'Emerald', 0),
(72, 'Sapphire', 0),
(72, 'Topaz', 0),

(73, 'Galileo Galilei', 1),
(73, 'Isaac Newton', 0),
(73, 'Johannes Kepler', 0),
(73, 'Nicolas Copernicus', 0),

(74, 'Copper', 1),
(74, 'Silver', 0),
(74, 'Gold', 0),
(74, 'Iron', 0),

(75, 'Venus', 1),
(75, 'Mars', 0),
(75, 'Saturn', 0),
(75, 'Jupiter', 0);

-- Choices for Course 6
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(76, 'Beethoven', 1),
(76, 'Mozart', 0),
(76, 'Bach', 0),
(76, 'Chopin', 0),

(77, 'Glass', 1),
(77, 'Plastic', 0),
(77, 'Wood', 0),
(77, 'Metal', 0),

(78, 'Hobbes', 1),
(78, 'Rousseau', 0),
(78, 'Locke', 0),
(78, 'Smith', 0),

(79, 'Cyclone', 1),
(79, 'Hurricane', 0),
(79, 'Tornado', 0),
(79, 'Typhoon', 0),

(80, 'Mars', 1),
(80, 'Venus', 0),
(80, 'Mercury', 0),
(80, 'Saturn', 0),

(81, 'Geocentric', 1),
(81, 'Heliocentric', 0),
(81, 'Placentric', 0),
(81, 'Topocentric', 0),

(82, '4.0', 1),
(82, '3.0', 0),
(82, '2.0', 0),
(82, '1.0', 0),

(83, 'Cumulus', 1),
(83, 'Stratus', 0),
(83, 'Cirrus', 0),
(83, 'Nimbus', 0),

(84, 'Newton', 1),
(84, 'Einstein', 0),
(84, 'Galileo', 0),
(84, 'Hawking', 0),

(85, 'Sun', 1),
(85, 'Moon', 0),
(85, 'Earth', 0),
(85, 'Mars', 0),

(86, 'Oxygen', 1),
(86, 'Carbon', 0),
(86, 'Nitrogen', 0),
(86, 'Hydrogen', 0),

(87, 'Canada', 1),
(87, 'USA', 0),
(87, 'Mexico', 0),
(87, 'Brazil', 0),

(88, 'Basalt', 1),
(88, 'Granite', 0),
(88, 'Limestone', 0),
(88, 'Sandstone', 0),

(89, 'Einstein', 1),
(89, 'Newton', 0),
(89, 'Hawking', 0),
(89, 'Galileo', 0),

(90, 'Delta', 1),
(90, 'Estuary', 0),
(90, 'Basin', 0),
(90, 'River', 0);

-- Choices for Course 7
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(91, 'Himalayas', 1),
(91, 'Andes', 0),
(91, 'Rockies', 0),
(91, 'Alps', 0),

(92, 'Earth', 1),
(92, 'Mars', 0),
(92, 'Venus', 0),
(92, 'Jupiter', 0),

(93, 'Oxygen', 1),
(93, 'Carbon Dioxide', 0),
(93, 'Nitrogen', 0),
(93, 'Hydrogen', 0),

(94, 'Lake Victoria', 1),
(94, 'Lake Superior', 0),
(94, 'Lake Baikal', 0),
(94, 'Lake Tanganyika', 0),

(95, 'Pluto', 1),
(95, 'Mars', 0),
(95, 'Saturn', 0),
(95, 'Neptune', 0),

(96, 'Diamond', 1),
(96, 'Gold', 0),
(96, 'Silver', 0),
(96, 'Copper', 0),

(97, 'Venus', 1),
(97, 'Mars', 0),
(97, 'Saturn', 0),
(97, 'Jupiter', 0),

(98, 'Mitochondria', 1),
(98, 'Nucleus', 0),
(98, 'Ribosome', 0),
(98, 'Golgi Apparatus', 0),

(99, 'Neptune', 1),
(99, 'Uranus', 0),
(99, 'Saturn', 0),
(99, 'Jupiter', 0),

(100, 'Rome', 1),
(100, 'Athens', 0),
(100, 'Carthage', 0),
(100, 'Alexandria', 0),

(101, 'Benzene', 1),
(101, 'Ethanol', 0),
(101, 'Methane', 0),
(101, 'Butane', 0),

(102, 'Tokyo', 1),
(102, 'Beijing', 0),
(102, 'Seoul', 0),
(102, 'Shanghai', 0),

(103, 'Great Wall', 1),
(103, 'Hadrian’s Wall', 0),
(103, 'Berlin Wall', 0),
(103, 'Wailing Wall', 0),

(104, 'Sun', 1),
(104, 'Earth', 0),
(104, 'Moon', 0),
(104, 'Mars', 0),

(105, 'Neptune', 1),
(105, 'Pluto', 0),
(105, 'Uranus', 0),
(105, 'Saturn', 0);

-- Choices for Course 8
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(106, 'Dewey Decimal', 1),
(106, 'Library of Congress', 0),
(106, 'Universal Decimal', 0),
(106, 'National Library', 0),

(107, 'Platypus', 1),
(107, 'Koala', 0),
(107, 'Kangaroo', 0),
(107, 'Wombat', 0),

(108, 'Schrodinger', 1),
(108, 'Heisenberg', 0),
(108, 'Bohr', 0),
(108, 'Pauli', 0),

(109, 'Hockey', 1),
(109, 'Football', 0),
(109, 'Basketball', 0),
(109, 'Baseball', 0),

(110, 'Cricket', 1),
(110, 'Tennis', 0),
(110, 'Golf', 0),
(110, 'Rugby', 0),

(111, 'Mona Lisa', 1),
(111, 'Starry Night', 0),
(111, 'The Persistence of Memory', 0),
(111, 'The Scream', 0),

(112, 'Acid', 1),
(112, 'Base', 0),
(112, 'Salt', 0),
(112, 'Water', 0),

(113, 'Mitochondria', 1),
(113, 'Ribosome', 0),
(113, 'Nucleus', 0),
(113, 'Golgi Apparatus', 0),

(114, 'Corrosion', 1),
(114, 'Evaporation', 0),
(114, 'Condensation', 0),
(114, 'Sublimation', 0),

(115, 'Tornado', 1),
(115, 'Hurricane', 0),
(115, 'Typhoon', 0),
(115, 'Cyclone', 0),

(116, 'Plasma', 1),
(116, 'Solid', 0),
(116, 'Liquid', 0),
(116, 'Gas', 0),

(117, 'Viking', 1),
(117, 'Roman', 0),
(117, 'Greek', 0),
(117, 'Norman', 0),

(118, 'Oxygen', 1),
(118, 'Nitrogen', 0),
(118, 'Carbon Dioxide', 0),
(118, 'Hydrogen', 0),

(119, 'Tornado', 1),
(119, 'Hurricane', 0),
(119, 'Cyclone', 0),
(119, 'Typhoon', 0),

(120, 'Sun', 1),
(120, 'Moon', 0),
(120, 'Earth', 0),
(120, 'Mars', 0);

-- Choices for Course 9
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(121, 'Tornado', 1),
(121, 'Cyclone', 0),
(121, 'Typhoon', 0),
(121, 'Hurricane', 0),

(122, 'Blue', 1),
(122, 'Green', 0),
(122, 'Yellow', 0),
(122, 'Red', 0),

(123, 'Saturn', 1),
(123, 'Jupiter', 0),
(123, 'Mars', 0),
(123, 'Uranus', 0),

(124, 'Brazil', 1),
(124, 'Argentina', 0),
(124, 'Chile', 0),
(124, 'Peru', 0),

(125, 'C++', 1),
(125, 'Java', 0),
(125, 'Python', 0),
(125, 'Ruby', 0),

(126, 'Scotland', 1),
(126, 'Wales', 0),
(126, 'Ireland', 0),
(126, 'England', 0),

(127, 'Paris', 1),
(127, 'London', 0),
(127, 'Berlin', 0),
(127, 'Rome', 0),

(128, 'Mathematics', 1),
(128, 'Biology', 0),
(128, 'Chemistry', 0),
(128, 'Physics', 0),

(129, 'HTML', 1),
(129, 'CSS', 0),
(129, 'JavaScript', 0),
(129, 'Python', 0),

(130, 'Java', 1),
(130, 'C++', 0),
(130, 'C#', 0),
(130, 'Ruby', 0),

(131, 'Nile', 1),
(131, 'Amazon', 0),
(131, 'Yangtze', 0),
(131, 'Ganges', 0),

(132, 'Mercury', 1),
(132, 'Venus', 0),
(132, 'Mars', 0),
(132, 'Jupiter', 0),

(133, 'Tesla', 1),
(133, 'Einstein', 0),
(133, 'Newton', 0),
(133, 'Hawking', 0),

(134, 'Cubic', 1),
(134, 'Spherical', 0),
(134, 'Cylindrical', 0),
(134, 'Tetrahedral', 0),

(135, 'Tornado', 1),
(135, 'Hurricane', 0),
(135, 'Cyclone', 0),
(135, 'Typhoon', 0);

-- Choices for Course 10
INSERT INTO Choices (QuestionID, ChoiceText, IsCorrect) VALUES
(136, '100', 1),
(136, '200', 0),
(136, '300', 0),
(136, '400', 0),

(137, 'Nile', 1),
(137, 'Amazon', 0),
(137, 'Yangtze', 0),
(137, 'Mississippi', 0),

(138, 'Mercury', 1),
(138, 'Venus', 0),
(138, 'Mars', 0),
(138, 'Saturn', 0),

(139, 'Shakespeare', 1),
(139, 'Dickens', 0),
(139, 'Austen', 0),
(139, 'Hemingway', 0),

(140, 'Pluto', 1),
(140, 'Mars', 0),
(140, 'Neptune', 0),
(140, 'Jupiter', 0),

(141, 'Paris', 1),
(141, 'London', 0),
(141, 'Berlin', 0),
(141, 'Rome', 0),

(142, '7', 1),
(142, '6', 0),
(142, '8', 0),
(142, '9', 0),

(143, 'Einstein', 1),
(143, 'Newton', 0),
(143, 'Hawking', 0),
(143, 'Galileo', 0),

(144, 'Hydrogen', 1),
(144, 'Oxygen', 0),
(144, 'Nitrogen', 0),
(144, 'Carbon', 0),

(145, 'Venus', 1),
(145, 'Mars', 0),
(145, 'Jupiter', 0),
(145, 'Saturn', 0),

(146, 'Mercury', 1),
(146, 'Venus', 0),
(146, 'Mars', 0),
(146, 'Jupiter', 0),

(147, 'Google', 1),
(147, 'Microsoft', 0),
(147, 'Apple', 0),
(147, 'IBM', 0),

(148, 'Amazon', 1),
(148, 'Google', 0),
(148, 'Microsoft', 0),
(148, 'Facebook', 0),

(149, 'Tornado', 1),
(149, 'Hurricane', 0),
(149, 'Cyclone', 0),
(149, 'Typhoon', 0),

(150, 'Jupiter', 1),
(150, 'Saturn', 0),
(150, 'Uranus', 0),
(150, 'Neptune', 0);

delete from student
DBCC CHECKIDENT ('student', RESEED, 0);

-- Students for Course ID 1
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('John', 'Doe', 1, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jane', 'Doe', 1, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jim', 'Beam', 1, 3);

-- Students for Course ID 2
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Anna', 'Smith', 2, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Johnson', 2, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Clara', 'Williams', 2, 6);

-- Students for Course ID 3
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Jones', 3, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Brown', 3, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Davis', 3, 9);

-- Students for Course ID 4
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Miller', 4, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Wilson', 4, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Moore', 4, 12);

-- Students for Course ID 5
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Taylor', 5, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Anderson', 5, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Leo', 'Thomas', 5, 15);

-- Students for Course ID 6
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Jackson', 6, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'White', 6, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Harris', 6, 3);

-- Students for Course ID 7
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Martin', 7, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Thompson', 7, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Garcia', 7, 6);

-- Students for Course ID 8
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Clark', 8, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Lopez', 8, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Young', 8, 9);

-- Students for Course ID 9
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Vera', 'Allen', 9, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Will', 'Harris', 9, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Walker', 9, 12);

-- Students for Course ID 10
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'King', 10, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zach', 'Scott', 10, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Adams', 10, 15);

-- Students for Course ID 11
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Baker', 11, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Martinez', 11, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Derek', 'Perry', 11, 3);

-- Students for Course ID 12
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Morris', 12, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Bryant', 12, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Gina', 'Miller', 12, 6);

-- Students for Course ID 13
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Hughes', 13, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Carter', 13, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Wright', 13, 9);

-- Students for Course ID 14
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Warren', 14, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Russell', 14, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Bennett', 14, 12);

-- Students for Course ID 15
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Fisher', 15, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Cole', 15, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Parker', 15, 15);

-- Students for Course ID 16
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Peterson', 16, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Hughes', 16, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Morris', 16, 3);

-- Students for Course ID 17
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Cook', 17, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Harris', 17, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Bell', 17, 6);

-- Students for Course ID 18
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Brooks', 18, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Davis', 18, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Edwards', 18, 9);

-- Students for Course ID 19
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Foster', 19, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Gonzalez', 19, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Gray', 19, 12);

-- Students for Course ID 20
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Clara', 'James', 20, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Derek', 'Kelly', 20, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Eva', 'Lee', 20, 15);

-- Students for Course ID 21
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martinez', 21, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Nelson', 21, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'O’Connor', 21, 3);

-- Students for Course ID 22
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Perry', 22, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 22, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 22, 6);

-- Students for Course ID 23
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 23, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 23, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 23, 9);

-- Students for Course ID 24
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 24, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 24, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 24, 12);

-- Students for Course ID 25
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 25, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 25, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 25, 15);

-- Students for Course ID 26
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 26, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 26, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 26, 3);

-- Students for Course ID 27
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 27, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 27, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 27, 6);

-- Students for Course ID 28
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 28, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 28, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 28, 9);

-- Students for Course ID 29
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Klein', 29, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Lee', 29, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martin', 29, 12);

-- Students for Course ID 30
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Norris', 30, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Owen', 30, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Parker', 30, 15);

-- Students for Course ID 31
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 31, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 31, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 31, 3);

-- Students for Course ID 32
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 32, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 32, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 32, 6);

-- Students for Course ID 33
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 33, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 33, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 33, 9);

-- Students for Course ID 34
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 34, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 34, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 34, 12);

-- Students for Course ID 35
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 35, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 35, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 35, 15);

-- Students for Course ID 36
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 36, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 36, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 36, 3);

-- Students for Course ID 37
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 37, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 37, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Klein', 37, 6);

-- Students for Course ID 38
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Lee', 38, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martin', 38, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Norris', 38, 9);

-- Students for Course ID 39
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Owen', 39, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Parker', 39, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 39, 12);

-- Students for Course ID 40
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 40, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 40, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 40, 15);

-- Students for Course ID 41
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 41, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 41, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 41, 3);

-- Students for Course ID 42
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 42, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 42, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 42, 6);

-- Students for Course ID 43
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 43, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 43, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 43, 9);

-- Students for Course ID 44
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 44, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 44, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 44, 12);

-- Students for Course ID 45
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 45, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 45, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 45, 15);

-- Students for Course ID 46
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 46, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Klein', 46, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Lee', 46, 3);

-- Students for Course ID 47
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martin', 47, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Norris', 47, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Owen', 47, 6);

-- Students for Course ID 48
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Parker', 48, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 48, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 48, 9);

-- Students for Course ID 49
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 49, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 49, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 49, 12);

-- Students for Course ID 50
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 50, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 50, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 50, 15);

-- Students for Course ID 51
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 51, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 51, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 51, 3);

-- Students for Course ID 52
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 52, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 52, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 52, 6);

-- Students for Course ID 53
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 53, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 53, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 53, 9);

-- Students for Course ID 54
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 54, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 54, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 54, 12);

-- Students for Course ID 55
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Klein', 55, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Lee', 55, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martin', 55, 15);

-- Students for Course ID 56
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Norris', 56, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Owen', 56, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Parker', 56, 3);

-- Students for Course ID 57
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 57, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 57, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 57, 6);

-- Students for Course ID 58
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 58, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 58, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 58, 9);

-- Students for Course ID 59
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 59, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 59, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 59, 12);

-- Students for Course ID 60
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 60, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 60, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 60, 15);

-- Students for Course ID 61
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 61, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 61, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 61, 3);

-- Students for Course ID 62
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 62, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 62, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 62, 6);

-- Students for Course ID 63
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 63, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 63, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Klein', 63, 9);

-- Students for Course ID 64
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Lee', 64, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martin', 64, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Norris', 64, 12);

-- Students for Course ID 65
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Owen', 65, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Parker', 65, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 65, 15);

-- Students for Course ID 66
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 66, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 66, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 66, 3);

-- Students for Course ID 67
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 67, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 67, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 67, 6);

-- Students for Course ID 68
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 68, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 68, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 68, 9);

-- Students for Course ID 69
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 69, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 69, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 69, 12);

-- Students for Course ID 70
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 70, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 70, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 70, 15);

-- Students for Course ID 71
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 71, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 71, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 71, 3);

-- Students for Course ID 72
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 72, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Dan', 'Klein', 72, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ella', 'Lee', 72, 6);

-- Students for Course ID 73
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Frank', 'Martin', 73, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Grace', 'Norris', 73, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Hank', 'Owen', 73, 9);

-- Students for Course ID 74
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ivy', 'Parker', 74, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Jack', 'Quinn', 74, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Kara', 'Reed', 74, 12);

-- Students for Course ID 75
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Liam', 'Stone', 75, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Mia', 'Taylor', 75, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Nate', 'Underwood', 75, 15);

-- Students for Course ID 76
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Olivia', 'Vaughn', 76, 1);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Paul', 'Walker', 76, 2);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Quinn', 'Xander', 76, 3);

-- Students for Course ID 77
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Rita', 'Young', 77, 4);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Steve', 'Zimmerman', 77, 5);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Tina', 'Arnold', 77, 6);

-- Students for Course ID 78
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Uma', 'Brown', 78, 7);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Victor', 'Clark', 78, 8);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Wendy', 'Davis', 78, 9);

-- Students for Course ID 79
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Xander', 'Evans', 79, 10);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Yara', 'Fisher', 79, 11);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Zane', 'Green', 79, 12);

-- Students for Course ID 80
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Alice', 'Hughes', 80, 13);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Ben', 'Ingram', 80, 14);
INSERT INTO student (st_fname, st_lname, crs_id, intake_id) VALUES ('Cleo', 'Johnson', 80, 15);

alter table Exams
alter column exam_id int primary key