DROP FROM CageVisits;
DROP FROM Members;
DROP FROM Animals;
DROP FROM Species;
DROP FROM Cages;
DROP FROM Keepers;
DROP SCHEMA Lab2 CASCADE;
CREATE SCHEMA Lab2;

CREATE TABLE Keepers (
keeperID INTEGER,
name VARCHAR(30),
hireDate DATE NOT NULL,
keeperLevel CHAR(1),
keeperSalary NUMERIC(7,2),
PRIMARY KEY (keeperID)
);

CREATE TABLE Cages (
cageID INTEGER,
cageSector CHAR(1) NOT NULL,
keeperID INTEGER,
PRIMARY KEY (cageID),
FOREIGN KEY (keeperID) REFERENCES Keepers
);

CREATE TABLE Species (
speciesID INTEGER,
speciesName VARCHAR(40) NOT NULL,
genus VARCHAR(40),
animalCount INTEGER,
PRIMARY KEY (speciesID),
UNIQUE (speciesName)
);

CREATE TABLE Animals (
animalID INTEGER,
name VARCHAR(30),
speciesID INTEGER,
animalAge INTEGER,
cageID INTEGER,
PRIMARY KEY (animalID),
FOREIGN KEY (speciesID) REFERENCES Species,
FOREIGN KEY (cageID) REFERENCES Cages,
UNIQUE (name, speciesID)
);

CREATE TABLE Members (
memberID INTEGER,
name VARCHAR(30),
address VARCHAR(40),
memberStatus CHAR(1),
joinDate DATE,
expirationDate DATE,
PRIMARY KEY (memberID),
UNIQUE (name, address)
);

CREATE TABLE CageVisits (
memberID INTEGER,
cageID INTEGER,
visitDate DATE,
likedVisit BOOLEAN,
PRIMARY KEY (memberID, cageID, visitDate),
FOREIGN KEY (memberID) REFERENCES Members,
FOREIGN KEY (cageID) REFERENCES Cages
);
