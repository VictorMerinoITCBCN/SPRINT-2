CREATE TABLE IF NOT EXISTS User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    class_group VARCHAR(50) NOT NULL,
    email VARCHAR(255),
    phone BIGINT
);

CREATE TABLE IF NOT EXISTS Teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone BIGINT
);

CREATE TABLE IF NOT EXISTS Subject (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Assistance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    userID INT,
    teacherID INT,
    subjectID INT,
    attendance_status ENUM('present', 'absent', 'justified'),
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userID) REFERENCES User(id),
    FOREIGN KEY (teacherID) REFERENCES Teacher(id),
    FOREIGN KEY (subjectID) REFERENCES Subject(id)
);
