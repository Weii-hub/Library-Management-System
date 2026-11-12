-- CSDL Hệ Thống Quản Lý Thư Viện (Library Management System)
CREATE TABLE Categories (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT
);

CREATE TABLE Authors (
    Id SERIAL PRIMARY KEY,
    FullName VARCHAR(150) NOT NULL,
    Biography TEXT
);

CREATE TABLE Books (
    Id SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    CategoryId INT REFERENCES Categories(Id),
    AuthorId INT REFERENCES Authors(Id),
    PublishYear INT,
    TotalCopies INT NOT NULL DEFAULT 1,
    AvailableCopies INT NOT NULL DEFAULT 1
);

CREATE TABLE Readers (
    Id SERIAL PRIMARY KEY,
    CardNumber VARCHAR(20) UNIQUE NOT NULL,
    FullName VARCHAR(150) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),
    Status INT DEFAULT 1 -- 1: Hoạt động, 0: Tạm khóa
);

CREATE TABLE BorrowRecords (
    Id SERIAL PRIMARY KEY,
    ReaderId INT REFERENCES Readers(Id),
    BookId INT REFERENCES Books(Id),
    BorrowDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DueDate TIMESTAMP NOT NULL,
    ReturnDate TIMESTAMP,
    Status INT DEFAULT 0, -- 0: Đang mượn, 1: Đã trả, 2: Quá hạn
    FineAmount DECIMAL(18,2) DEFAULT 0
);
