Create DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

-- DROP DATABASE Testing_System_Assignment_1;

Create Table Department
(
	DepartmentID int primary key auto_increment,
	DepartmentName varchar(100)
);

Create Table Position
(
	PositionID int primary key auto_increment,
	PositionName varchar(50)
);
Create Table Account
(
	AccountID int primary key auto_increment,
	Email varchar(60),
	Username varchar(50),
	Fullname varchar(50),
	DepartmentID int,
	Foreign key (DepartmentID) references Department (DepartmentID),
	PositionID int,
	Foreign key (PositionID) references Position (PositionID),
	CreatDate Date
);
Create Table `Group`
(
	GroupID int primary key auto_increment,
	GroupName varchar(50),
    CreatorID int,
    CreateDate Date
);
Create Table `GroupAccount`
(
	GroupID int primary key auto_increment,
	AccountID int,
    Foreign key (AccountID) references Account (AccountID),
	JoinDate Date
);
Create Table `TypeQuestion`
(
	TypeID int primary key auto_increment,
	TypeName varchar(60)
);
Create Table `CategoryQuestion`
(
	CategoryID int primary key auto_increment,
	CategoryName varchar(50)
);
Create Table `Question`
(
	QuestionID int primary key auto_increment,
	Content varchar(200),
	CategoryID int,
	Foreign key (CategoryID) references CategoryQuestion (CategoryID),
	TypeID int,
	Foreign key (TypeID) references TypeQuestion (TypeID),
	CreatorID int,
	CreateDate Date
);
Create Table `Answer`
(
	AnswerID int primary key auto_increment,
	Content varchar(200),
	QuestionID int,
	Foreign key (QuestionID) references Question (QuestionID),
	isCorrect boolean
);
Create Table `Exam`
(
	ExamID int primary key,
	`Code` int,
	Title varchar(40),
	CategoryID int,
	Duration datetime,
	CreatorID int,
	CreateDate Date
);
Create Table `ExamQuestion`
(
	ExamID int primary key,
	QuestionID int,
	Foreign key (QuestionID) references Question (QuestionID)
);

