use studentmanagement;

# creating student table
CREATE TABLE Student (
   Student_ID INT PRIMARY KEY,
   Name VARCHAR (50),
   Math_score INT,
   Total_score INT
   );
   
#inserting values into student table   
INSERT INTO Student VALUES (1, "Virat", 98, 98); 
INSERT INTO Student VALUES (2, "Anushka", 83, 83);
INSERT INTO Student VALUES (3, "Arjun", 78, 78);
INSERT INTO Student VALUES (4, "Sneha", 93, 93);
INSERT INTO Student VALUES (5, "Siddharth", 86, 86);
INSERT INTO Student VALUES (6, "Kiara", 73, 73);
INSERT INTO Student VALUES (7, "Tarak", 96, 96);
INSERT INTO Student VALUES (8, "Pranitha", 88, 88);
INSERT INTO Student VALUES (9, "Ritesh", 71, 71);
INSERT INTO Student VALUES (10, "Genelia", 92, 92);

# 1)  Rank Students Based on Total Scores
SELECT 
    Student_ID, 
    Name, 
	Total_score, 
    RANK() OVER (ORDER BY Total_Score DESC) AS student_Rank
FROM Student;

# 2) Calculate Running Totals for Math Scores
SELECT
  student_ID,
  name,
  Math_score,
  SUM(Math_Score) OVER (ORDER BY Student_ID) AS RunningTotal
FROM Student;

