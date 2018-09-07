
CREATE TABLE Artist( Artist_ID INT NOT NULL AUTO_INCREMENT , 
					 FirstName VARCHAR(20) NOT NULL , 
					 MiddeName VARCHAR(20) NOT NULL , 
					 LastName VARCHAR(20) NOT NULL , 
					 Address VARCHAR(50) NOT NULL , 
					 Phone INT NOT NULL ,
					 PRIMARY KEY (Artist_ID));

CREATE TABLE Exhibition( Ex_ID INT NOT NULL AUTO_INCREMENT ,
						 Ex_Name VARCHAR(20) NOT NULL , 
						 Location VARCHAR(20) NOT NULL , 
						 Ex_Type VARCHAR(20) NOT NULL , 
						 Painter_ID INT NOT NULL , 
						 Start_Date DATE NOT NULL , 
						 End_Date DATE NOT NULL , 
						 PRIMARY KEY (Ex_ID));

CREATE TABLE Gallery( Gallery_ID INT NOT NULL AUTO_INCREMENT , 
					  Gallery_Name VARCHAR(20) NOT NULL , 
					  URL VARCHAR(20) NOT NULL , 
					  Location VARCHAR(20) NOT NULL , 
					  PRIMARY KEY (Gallery_ID));

CREATE TABLE Customer( Customer_ID INT NOT NULL AUTO_INCREMENT , 
					   Customer_Name VARCHAR(20) NOT NULL , 
					   Address VARCHAR(20) NOT NULL , 
					   Phone INT NOT NULL , 
					   PRIMARY KEY (Customer_ID));

CREATE TABLE Painting( Title VARCHAR(20) NOT NULL , 
					   URL VARCHAR(20) NOT NULL , 
					   Year INT NOT NULL , 
					   Type VARCHAR(20) NOT NULL , 
					   Cost INT NOT NULL , 
					   Likes INT NOT NULL , 
					   PRIMARY KEY (Title));

ALTER TABLE Gallery ADD FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID);

ALTER TABLE Painting ADD FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID);

ALTER TABLE Painting ADD FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID);

CREATE TABLE ExhibitionGalleryR( Artist_ID INT NOT NULL,
								 Ex_ID INT NOT NULL, 
								 FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID), 
								 FOREIGN KEY (Ex_ID) REFERENCES Exhibition(Ex_ID));


