/**********************************************
* file: SchoolTranscript.sql
* Athor: Rachelle Diaz
* 
*CREATE DATABASE SchoolTranscript
*/

USE SchoolTranscript
GO

/*====Drop Statements===*/
if EXISTS(SELECT*FROM INFORMATION_SCHEMA, TABLES WHERE TABLE_NAME = 'Students')
DROP TABLE Students

/*
Drop Order
1. StudentCourses
2.Courses
3.Students
*/

/*===Create Tables===*/

CREATE TABLE Students
(
StudentID      int     NOT NULL, --This means a value is REQUIRED
GivenName      varchar(50)      NOT NULL,
Surname        varchar(50)      NOT NULL,
DateOfBirth    datetime         NOT NULL,
Enrolled       bit              NOT NULL

/*
Table Defenition:
is a set of comma (,) separated column and table decorations 
*/
)

CREATE TABLE Courses
(
Number      varchar(10)         NOT NULL,
[Name]      varchar(50)         NOT NULL,
Credits     decimal(3,1)        NOT NULL,
[Hours]     tinyint             NOT NULL,
Active      bit                 NOT NULL,
Cost        money               NOT NULL
)

CREATE TABLE StudentCourses
(
StudentID       int              NOT NULL,
CourseNumber    varchar(10)      NOT NULL,
[Year]          tinyint          NOT NULL,
Term            char(3)          NOT NULL,
FinalMark       tinyint          NOT NULL,
[Status]        char(1)          NOT NULL
