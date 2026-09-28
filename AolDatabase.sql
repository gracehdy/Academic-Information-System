CREATE TABLE `Branch` (
    `Branch`	VARCHAR(512),
    `Program`	VARCHAR(512)
);

INSERT INTO `Branch` (`Branch`, `Program`) VALUES ('AL', 'B.Tech');


CREATE TABLE `Hasil_Mata_Kuliah` (
    `Roll No`	VARCHAR(512),
    `CourseID (Primary Key, Foreign Key)`	VARCHAR(512),
    `Grade`	VARCHAR(512)
);

INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231001', 'AL401', 'C+');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231001', 'AL402', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231001', 'AL403', 'A');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231001', 'AL404', 'A');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231001', 'AL405', 'A');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231001', 'AL406', 'A');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231002', 'AL401', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231002', 'AL402', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231002', 'AL403', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231002', 'AL404', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231002', 'AL405', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231002', 'AL401', 'D');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231004', 'AL402', 'C');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231004', 'AL403', 'B');
INSERT INTO `Hasil_Mata_Kuliah` (`Roll No`, `CourseID (Primary Key, Foreign Key)`, `Grade`) VALUES ('0403AL231004', 'AL404', 'B');


CREATE TABLE `Hasil_Semester` (
    `RollNo`	VARCHAR(512),
    `SGPA`	DOUBLE,
    `Result_Description`	VARCHAR(512)
);

INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231001', '7.08', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231002', '6.46', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231004', '5.38', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231005', '6.71', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231008', '5.33', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231009', '5.21', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231010', '7.33', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231012', '7.04', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231013', '6.29', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231014', '7.04', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231015', '6.08', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231016', '7.13', 'PASS');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231017', '7.5', 'PASS WITH GRACE');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231018', '7.08', 'PASS WITH GRACE');
INSERT INTO `Hasil_Semester` (`RollNo`, `SGPA`, `Result_Description`) VALUES ('0403AL231019', '7.04', 'PASS WITH GRACE');


CREATE TABLE `Mahasiswa` (
    `RollNo`	VARCHAR(512),
    `Name`	VARCHAR(512),
    `Branch`	VARCHAR(512),
    `Semester`	INT,
    `Status`	VARCHAR(512),
    `Session`	VARCHAR(512),
    `CGPA`	DOUBLE
);

INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231001', 'AAKASH PIPALDE', 'AL', '4', 'Regular', 'Jun-25', '6.71');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231002', 'AAYUSH PATEL', 'AL', '4', 'Regular', 'Jun-25', '6.38');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231004', 'ABIR SAXENA', 'AL', '4', 'Regular', 'Jun-25', '5.5');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231005', 'AMEY BHOKARIKAR', 'AL', '4', 'Regular', 'Jun-25', '6.82');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231008', 'ANTIM JAMLE', 'AL', '4', 'Regular', 'Jun-25', '5.29');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231009', 'ARUN KHODE', 'AL', '4', 'Regular', 'Jun-25', '5.52');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231010', 'ARYAN RATHOD', 'AL', '4', 'Regular', 'Jun-25', '7.24');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231012', 'BHUMI GUPTA', 'AL', '4', 'Regular', 'Jun-25', '7.09');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231013', 'BHUPENDRA VERMA', 'AL', '4', 'Regular', 'Jun-25', '6.17');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231014', 'CHINMAY JOSHI', 'AL', '4', 'Regular', 'Jun-25', '7.24');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231015', 'DARSHAN KUSHWAH', 'AL', '4', 'Regular', 'Jun-25', '5.89');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231016', 'DEVASHISH GUPTA', 'AL', '4', 'Regular', 'Jun-25', '7.33');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231017', 'DIVY CHATURVEDI', 'AL', '4', 'Regular', 'Jun-25', '7.09');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231018', 'DIVYANI PAGARE', 'AL', '4', 'Regular', 'Jun-25', '7.12');
INSERT INTO `Mahasiswa` (`RollNo`, `Name`, `Branch`, `Semester`, `Status`, `Session`, `CGPA`) VALUES ('0403AL231019', 'DIVYANSHI PRAJAPAT', 'AL', '4', 'Regular', 'Jun-25', '7.05');


CREATE TABLE `Mata_Kuliah` (
    `Course_ID`	VARCHAR(512),
    `Course_type`	VARCHAR(512)
);

INSERT INTO `Mata_Kuliah` (`Course_ID`, `Course_type`) VALUES ('AL401', 'T');
INSERT INTO `Mata_Kuliah` (`Course_ID`, `Course_type`) VALUES ('AL402', 'T');
INSERT INTO `Mata_Kuliah` (`Course_ID`, `Course_type`) VALUES ('AL403', 'P');
INSERT INTO `Mata_Kuliah` (`Course_ID`, `Course_type`) VALUES ('AL404', 'P');
INSERT INTO `Mata_Kuliah` (`Course_ID`, `Course_type`) VALUES ('AL405', 'P');
INSERT INTO `Mata_Kuliah` (`Course_ID`, `Course_type`) VALUES ('AL406', 'P');
