DROP DATABASE IF EXISTS MovieCatalogue;
CREATE DATABASE IF NOT EXISTS MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE `Genre` (
	`GenreID` int not null auto_increment,
	`GenreName` varchar(30) not null,
    	PRIMARY KEY (`GenreID`)
);

CREATE TABLE `Rating` (
	`RatingID` int not null auto_increment,
	`RatingName` varchar(5) not null,
    	PRIMARY KEY (`RatingID`)
);

CREATE TABLE `Director` (
	`DirectorID` int not null auto_increment,
	`FirstName` varchar(30) not null,
	`LastName` varchar(30) not null,
	`BirthDate` date null,
    	PRIMARY KEY (`DirectorID`)
);

CREATE TABLE `Actor` (
	`ActorID`  int not null auto_increment,
	`FirstName` varchar(30) not null,
	`LastName` varchar(30) not null,
	`BirthDate` date null,
    	PRIMARY KEY (`ActorID`)
);

CREATE TABLE `Movie` (
	`MovieID` int not null auto_increment,
	`GenreID` int not null,
	`DirectorID` int null,
	`RatingID` int null,
	`Title` varchar(128) not null,
	`ReleaseDate` date null,
    	PRIMARY KEY (`MovieID`)
);

ALTER TABLE `Movie`
	ADD CONSTRAINT `fk_MovieGenre` 
	FOREIGN KEY (`GenreID`) 	
	REFERENCES `Genre`
	(`GenreID`) ON DELETE NO ACTION;

ALTER TABLE `Movie`
	ADD CONSTRAINT `fk_MovieDirector` 
	FOREIGN KEY (`DirectorID`) 
	REFERENCES `Director`
	(`DirectorID`) ON DELETE NO ACTION;

ALTER TABLE `Movie`
	ADD CONSTRAINT `fk_MovieRating` 
	FOREIGN KEY (`RatingID`) 
	REFERENCES `Rating`
	(`RatingID`) ON DELETE NO ACTION;


ALTER TABLE `CastMember`
	ADD CONSTRAINT `fkCastMemberActor` 
	FOREIGN KEY (`ActorID`) 
	REFERENCES `Actor`
	(`ActorID`) ON DELETE NO ACTION;


ALTER TABLE `CastMember`
	ADD CONSTRAINT `fkCastMemberMovie` 
	FOREIGN KEY (`MovieID`) 
	REFERENCES `Movie`
	(`MovieID`) ON DELETE NO ACTION;
