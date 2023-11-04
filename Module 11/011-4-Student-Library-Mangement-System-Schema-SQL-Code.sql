create database studentlibmanagement;

use studentlibmanagement;

create table student
(
	Roll varchar(4) primary key,
    name varchar(50)
);


create table librarian
(
	Lib_Id varchar(4) primary key,
    Name varchar(50)
);

create table Book
(
	Book_id varchar(4) primary key,
    Book_Name varchar(50),
    Book_Genre varchar(50)
);

CREATE TABLE BORROW
(
	WHO_BORROWED_ROLL VARCHAR(4),
    WHICH_BOOK_ID VARCHAR(4),
    
	BORROW_dATE DATE,
    RETURN_DATE DATE,
    
    FOREIGN KEY(WHO_BORROWED_ROLL) references student(ROLL),
    FOREIGN KEY(WHICH_BOOK_ID) references BOOK(BOOK_ID),
	
    PRIMARY KEY(WHO_BORROWED_ROLL,WHICH_BOOK_ID)
);

create table permission
(
	WHICH_BOOK_ID VARCHAR(4),
    Who_Permitted_Id varchar(4),
    
    FOREIGN KEY(Who_Permitted_Id) references librarian(Lib_Id),
    FOREIGN KEY(WHICH_BOOK_ID) references BOOK(BOOK_ID),
    
    PRIMARY KEY(WHICH_BOOK_ID, Who_Permitted_Id)
);