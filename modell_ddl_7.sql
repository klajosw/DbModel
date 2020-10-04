-- Table ShowTime

CREATE TABLE ShowTime
(
 Show_Id Int NOT NULL,
 Show_Time Time NULL
)
;

-- Add keys for table ShowTime

ALTER TABLE ShowTime ADD CONSTRAINT Key1 PRIMARY KEY (Show_Id)
;

-- Table Production_Company

CREATE TABLE Production_Company
(
 Company_Id Int NOT NULL,
 Company_Name Char(25) NULL
)
;

-- Add keys for table Production_Company

ALTER TABLE Production_Company ADD CONSTRAINT Key13 PRIMARY KEY (Company_Id)
;

-- Table Theatre

CREATE TABLE Theatre
(
 Theatre_Id Int NOT NULL,
 Location_Id Int NOT NULL,
 Name Varchar(15) NULL,
 No_Of_Screens Int NULL,
 Contact_Number Bigint NULL
)
;

-- Create indexes for table Theatre

CREATE INDEX IX_Relationship50 ON Theatre (Location_Id)
;

-- Add keys for table Theatre

ALTER TABLE Theatre ADD CONSTRAINT Key15 PRIMARY KEY (Theatre_Id)
;

-- Table Location

CREATE TABLE Location
(
 Location_Id Int NOT NULL,
 AddressLine Varchar(30) NULL,
 City Char(15) NULL,
 State Char(15) NULL,
 ZipCode Int NULL,
 Country Char(15) NULL
)
;

-- Add keys for table Location

ALTER TABLE Location ADD CONSTRAINT Key16 PRIMARY KEY (Location_Id)
;

-- Table Person

CREATE TABLE Person
(
 Person_Id Int NOT NULL,
 Gender Char(1) NULL,
 Birth_City Char(12) NULL,
 First_Name Char(15) NULL,
 Last_Name Char(15) NULL,
 Birth_Country Char(20) NULL,
 Date_of_Birth Date NULL,
 Description Varchar(50) NULL
)
;

-- Add keys for table Person

ALTER TABLE Person ADD CONSTRAINT Key20 PRIMARY KEY (Person_Id)
;

-- Table Movie_Review

CREATE TABLE Movie_Review
(
 Review_Id Int NOT NULL,
 Review_Type Char(12) NULL,
 Review_Comments Varchar(75) NULL,
 Rating Int NULL,
 Movie_Id Int NOT NULL,
 Review_Date Date NULL,
 User_Id Int NOT NULL
)
;

-- Add keys for table Movie_Review

ALTER TABLE Movie_Review ADD CONSTRAINT Key29 PRIMARY KEY (Review_Id,Movie_Id,User_Id)
;

-- Table WatchList

CREATE TABLE WatchList
(
 WatchList_Id Int NOT NULL,
 User_Id Int NOT NULL
)
;

-- Add keys for table WatchList

ALTER TABLE WatchList ADD CONSTRAINT Key30 PRIMARY KEY (WatchList_Id,User_Id)
;

-- Table Customer

CREATE TABLE Customer
(
 User_Id Int NOT NULL,
 User_Name Char(12) NOT NULL,
 Password Char(12) NULL,
 Email_Id Char(20) NULL,
 Name Char(25) NULL
)
;

-- Add keys for table Customer

ALTER TABLE Customer ADD CONSTRAINT Key31 PRIMARY KEY (User_Id)
;

-- Table Screen

CREATE TABLE Screen
(
 Screen_ID Int NOT NULL,
 Screen_Capacity Int NULL,
 Size_of_Screen Int NULL
)
;

-- Add keys for table Screen

ALTER TABLE Screen ADD CONSTRAINT Key38 PRIMARY KEY (Screen_ID)
;

-- Table Movie

CREATE TABLE Movie
(
 Movie_Id Int NOT NULL,
 Release_Date Date NULL,
 Movie_Name Varchar(25) NULL,
 Description Varchar(50) NULL,
 Running_Time Time NULL,
 Origin_Country Char(15) NULL
)
;

-- Add keys for table Movie

ALTER TABLE Movie ADD CONSTRAINT Key41 PRIMARY KEY (Movie_Id)
;

-- Table Tv_Series

CREATE TABLE Tv_Series
(
 Series_Id Int NOT NULL,
 Series_Name Char(15) NULL,
 Description Varchar(50) NULL,
 Origin_Country Char(15) NULL,
 Series_Start_Year Int NULL
)
;

-- Add keys for table Tv_Series

ALTER TABLE Tv_Series ADD CONSTRAINT Key42 PRIMARY KEY (Series_Id)
;

-- Table Episode

CREATE TABLE Episode
(
 Episode_Id Int NOT NULL,
 Air_Date Date NULL,
 Description Varchar(50) NULL,
 Running_Time Time NULL,
 Season_ID Int NOT NULL,
 Series_Id Int NOT NULL,
 Channel_Id Int NOT NULL,
 Show_Id Int NOT NULL
)
;

-- Create indexes for table Episode

CREATE INDEX IX_Relationship124 ON Episode (Channel_Id)
;

CREATE INDEX IX_Relationship125 ON Episode (Show_Id)
;

-- Add keys for table Episode

ALTER TABLE Episode ADD CONSTRAINT Key43 PRIMARY KEY (Episode_Id,Season_ID,Series_Id)
;

-- Table Ticket_Purchased

CREATE TABLE Ticket_Purchased
(
 Ticket_Id Int NOT NULL,
 Total_Tickets Int NULL,
 Total_Cost Decimal(10,2) NULL,
 Senior_Tickets Int NULL,
 Adult_Tickets Int NULL,
 Child_Tickets Int NULL,
 Screen_ID Int NOT NULL,
 Theatre_Id Int NOT NULL,
 Movie_Id Int NOT NULL,
 Show_Id Int NOT NULL,
 User_Id Int NULL
)
;

-- Create indexes for table Ticket_Purchased

CREATE INDEX IX_Relationship85 ON Ticket_Purchased (User_Id)
;

CREATE INDEX IX_Relationship86 ON Ticket_Purchased (Screen_ID,Theatre_Id,Movie_Id,Show_Id)
;

-- Add keys for table Ticket_Purchased

ALTER TABLE Ticket_Purchased ADD CONSTRAINT Key45 PRIMARY KEY (Ticket_Id)
;

-- Table Movie_Theatre

CREATE TABLE Movie_Theatre
(
 Theatre_Id Int NOT NULL,
 Movie_Id Int NOT NULL
)
;

-- Add keys for table Movie_Theatre

ALTER TABLE Movie_Theatre ADD CONSTRAINT Key46 PRIMARY KEY (Theatre_Id,Movie_Id)
;

-- Table Theatre_Screen

CREATE TABLE Theatre_Screen
(
 Screen_ID Int NOT NULL,
 Theatre_Id Int NOT NULL,
 Movie_Id Int NOT NULL
)
;

-- Add keys for table Theatre_Screen

ALTER TABLE Theatre_Screen ADD CONSTRAINT Key47 PRIMARY KEY (Screen_ID,Theatre_Id,Movie_Id)
;

-- Table Movie_Show

CREATE TABLE Movie_Show
(
 Screen_ID Int NOT NULL,
 Theatre_Id Int NOT NULL,
 Movie_Id Int NOT NULL,
 Show_Id Int NOT NULL,
 Tickets_Available Int NULL
)
;

-- Add keys for table Movie_Show

ALTER TABLE Movie_Show ADD CONSTRAINT Key48 PRIMARY KEY (Screen_ID,Theatre_Id,Movie_Id,Show_Id)
;

-- Table Season

CREATE TABLE Season
(
 Season_ID Int NOT NULL,
 Description Varchar(50) NULL,
 Released_Year Int NULL,
 No_of_Episodes Int NULL,
 Series_Id Int NOT NULL
)
;

-- Add keys for table Season

ALTER TABLE Season ADD CONSTRAINT Key49 PRIMARY KEY (Season_ID,Series_Id)
;

-- Table Genre

CREATE TABLE Genre
(
 Genre_Id Int NOT NULL,
 Genre_Type Char(15) NULL
)
;

-- Add keys for table Genre

ALTER TABLE Genre ADD CONSTRAINT Key53 PRIMARY KEY (Genre_Id)
;

-- Table Movie_Genre

CREATE TABLE Movie_Genre
(
 Movie_Id Int NOT NULL,
 Genre_Id Int NOT NULL
)
;

-- Add keys for table Movie_Genre

ALTER TABLE Movie_Genre ADD CONSTRAINT Key54 PRIMARY KEY (Movie_Id,Genre_Id)
;

-- Table Episode_Genre

CREATE TABLE Episode_Genre
(
 Episode_Id Int NOT NULL,
 Genre_Id Int NOT NULL,
 Season_ID Int NOT NULL,
 Series_Id Int NOT NULL
)
;

-- Add keys for table Episode_Genre

ALTER TABLE Episode_Genre ADD CONSTRAINT Key55 PRIMARY KEY (Episode_Id,Genre_Id,Season_ID,Series_Id)
;

-- Table Movie_Cast

CREATE TABLE Movie_Cast
(
 Movie_Id Int NOT NULL,
 Person_Id Int NOT NULL,
 Role Char(25) NULL
)
;

-- Add keys for table Movie_Cast

ALTER TABLE Movie_Cast ADD CONSTRAINT Key57 PRIMARY KEY (Movie_Id,Person_Id)
;

-- Table Movie_Crew

CREATE TABLE Movie_Crew
(
 Movie_Id Int NOT NULL,
 Person_Id Int NOT NULL,
 Job_Title Char(25) NULL
)
;

-- Add keys for table Movie_Crew

ALTER TABLE Movie_Crew ADD CONSTRAINT Key58 PRIMARY KEY (Movie_Id,Person_Id)
;

-- Table Series_Genre

CREATE TABLE Series_Genre
(
 Series_Id Int NOT NULL,
 Genre_Id Int NOT NULL
)
;

-- Add keys for table Series_Genre

ALTER TABLE Series_Genre ADD CONSTRAINT Key59 PRIMARY KEY (Series_Id,Genre_Id)
;

-- Table Movie_Production

CREATE TABLE Movie_Production
(
 Movie_Id Int NOT NULL,
 Company_Id Int NOT NULL
)
;

-- Add keys for table Movie_Production

ALTER TABLE Movie_Production ADD CONSTRAINT Key60 PRIMARY KEY (Movie_Id,Company_Id)
;

-- Table Series_Production

CREATE TABLE Series_Production
(
 Series_Id Int NOT NULL,
 Company_Id Int NOT NULL
)
;

-- Add keys for table Series_Production

ALTER TABLE Series_Production ADD CONSTRAINT Key61 PRIMARY KEY (Series_Id,Company_Id)
;

-- Table Series_Cast

CREATE TABLE Series_Cast
(
 Series_Id Int NOT NULL,
 Person_Id Int NOT NULL,
 Role Char(1) NULL
)
;

-- Add keys for table Series_Cast

ALTER TABLE Series_Cast ADD CONSTRAINT Key62 PRIMARY KEY (Series_Id,Person_Id)
;

-- Table Series_Crew

CREATE TABLE Series_Crew
(
 Series_Id Int NOT NULL,
 Person_Id Int NOT NULL,
 Job_Title Char(20) NULL
)
;

-- Add keys for table Series_Crew

ALTER TABLE Series_Crew ADD CONSTRAINT Key63 PRIMARY KEY (Series_Id,Person_Id)
;

-- Table Series_Review

CREATE TABLE Series_Review
(
 Series_Review_Id Int NOT NULL,
 Review_Type Char(12) NULL,
 Review_Comments Varchar(75) NULL,
 Rating Int NULL,
 User_Name Char(12) NOT NULL,
 Series_Id Int NOT NULL,
 Review_Date Date NULL,
 User_Id Int NOT NULL
)
;

-- Add keys for table Series_Review

ALTER TABLE Series_Review ADD CONSTRAINT Key98 PRIMARY KEY (Series_Review_Id,Series_Id,User_Id)
;

-- Table Movie_WatchList

CREATE TABLE Movie_WatchList
(
 Movie_Id Int NOT NULL,
 WatchList_Id Int NOT NULL,
 User_Id Int NOT NULL
)
;

-- Add keys for table Movie_WatchList

ALTER TABLE Movie_WatchList ADD CONSTRAINT Key99 PRIMARY KEY (Movie_Id,WatchList_Id,User_Id)
;

-- Table Series_WatchList

CREATE TABLE Series_WatchList
(
 Series_Id Int NOT NULL,
 WatchList_Id Int NOT NULL,
 User_Id Int NOT NULL
)
;

-- Add keys for table Series_WatchList

ALTER TABLE Series_WatchList ADD CONSTRAINT Key100 PRIMARY KEY (Series_Id,WatchList_Id,User_Id)
;

-- Table Channel

CREATE TABLE Channel
(
 Channel_Id Int NOT NULL,
 Channel_Name Char(12) NULL
)
;

-- Add keys for table Channel

ALTER TABLE Channel ADD CONSTRAINT Key101 PRIMARY KEY (Channel_Id)
;

-- Table News

CREATE TABLE News
(
 News_Id Int NOT NULL,
 Title Varchar(25) NULL,
 Description Varchar(75) NULL
)
;

-- Add keys for table News

ALTER TABLE News ADD CONSTRAINT Key102 PRIMARY KEY (News_Id)
;

-- Table Movie_News

CREATE TABLE Movie_News
(
 Movie_Id Int NOT NULL,
 News_Id Int NOT NULL
)
;

-- Add keys for table Movie_News

ALTER TABLE Movie_News ADD CONSTRAINT Key103 PRIMARY KEY (Movie_Id,News_Id)
;

-- Table Series_News

CREATE TABLE Series_News
(
 Series_Id Int NOT NULL,
 News_Id Int NOT NULL
)
;

-- Add keys for table Series_News

ALTER TABLE Series_News ADD CONSTRAINT Key104 PRIMARY KEY (Series_Id,News_Id)
;

-- Table Award_Show

CREATE TABLE Award_Show
(
 AwardShow_Id Int NOT NULL,
 AwardShow_Name Char(25) NULL
)
;

-- Add keys for table Award_Show

ALTER TABLE Award_Show ADD CONSTRAINT Key106 PRIMARY KEY (AwardShow_Id)
;

-- Table Award_Cate;ry

CREATE TABLE Award_Cate;ry
(
 Award_Cate;ry_Id Int NOT NULL,
 Award_Name Char(15) NULL
)
;

-- Add keys for table Award_Cate;ry

ALTER TABLE Award_Cate;ry ADD CONSTRAINT Key107 PRIMARY KEY (Award_Cate;ry_Id)
;

-- Table Award_Header

CREATE TABLE Award_Header
(
 AwardShow_Id Int NOT NULL,
 Award_Cate;ry_Id Int NOT NULL
)
;

-- Add keys for table Award_Header

ALTER TABLE Award_Header ADD CONSTRAINT Key108 PRIMARY KEY (AwardShow_Id,Award_Cate;ry_Id)
;

-- Table Award_Nomination

CREATE TABLE Award_Nomination
(
 Nominee_Id Int NOT NULL,
 AwardShow_Id Int NOT NULL,
 Award_Cate;ry_Id Int NOT NULL,
 Award_Winner Char(1) NULL
)
;

-- Add keys for table Award_Nomination

ALTER TABLE Award_Nomination ADD CONSTRAINT Key109 PRIMARY KEY (Nominee_Id,AwardShow_Id,Award_Cate;ry_Id)
;

-- Table Award_Nominated_Person

CREATE TABLE Award_Nominated_Person
(
 Nominee_Id Int NOT NULL,
 AwardShow_Id Int NOT NULL,
 Award_Cate;ry_Id Int NOT NULL,
 Person_Id Int NOT NULL,
 Movie_Id Int NULL,
 Series_Id Int NULL
)
;

-- Create indexes for table Award_Nominated_Person

CREATE INDEX IX_Relationship111 ON Award_Nominated_Person (Movie_Id)
;

CREATE INDEX IX_Relationship112 ON Award_Nominated_Person (Series_Id)
;

-- Add keys for table Award_Nominated_Person

ALTER TABLE Award_Nominated_Person ADD CONSTRAINT Key110 PRIMARY KEY (Nominee_Id,AwardShow_Id,Award_Cate;ry_Id,Person_Id)
;

-- Table Movie_Nomination

CREATE TABLE Movie_Nomination
(
 Movie_Id Int NOT NULL,
 Nominee_Id Int NOT NULL,
 AwardShow_Id Int NOT NULL,
 Award_Cate;ry_Id Int NOT NULL
)
;

-- Add keys for table Movie_Nomination

ALTER TABLE Movie_Nomination ADD CONSTRAINT Key111 PRIMARY KEY (Movie_Id,Nominee_Id,AwardShow_Id,Award_Cate;ry_Id)
;

-- Table Series_Nomination

CREATE TABLE Series_Nomination
(
 Nominee_Id Int NOT NULL,
 AwardShow_Id Int NOT NULL,
 Award_Cate;ry_Id Int NOT NULL,
 Series_Id Int NOT NULL
)
;

-- Add keys for table Series_Nomination

ALTER TABLE Series_Nomination ADD CONSTRAINT Key112 PRIMARY KEY (Nominee_Id,AwardShow_Id,Award_Cate;ry_Id,Series_Id)
;

-- Table AwardShow_Location

CREATE TABLE AwardShow_Location
(
 Location_Id Int NOT NULL,
 AwardShow_Id Int NOT NULL,
 Show_Date Date NULL
)
;

-- Add keys for table AwardShow_Location

ALTER TABLE AwardShow_Location ADD CONSTRAINT Key114 PRIMARY KEY (Location_Id,AwardShow_Id)
;

-- Create relationships section ------------------------------------------------- 

ALTER TABLE Movie_Theatre ADD CONSTRAINT Theatre_plays_movies FOREIGN KEY (Theatre_Id) REFERENCES Theatre (Theatre_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Theatre ADD CONSTRAINT Movies_are_played_in_theatres FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Theatre_Screen ADD CONSTRAINT Screen_is_in_a_Theatre FOREIGN KEY (Screen_ID) REFERENCES Screen (Screen_ID) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Theatre_Screen ADD CONSTRAINT Theatre_has_a_screen FOREIGN KEY (Theatre_Id, Movie_Id) REFERENCES Movie_Theatre (Theatre_Id, Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Show ADD CONSTRAINT TheatreScreen_has_a_Show FOREIGN KEY (Screen_ID, Theatre_Id, Movie_Id) REFERENCES Theatre_Screen (Screen_ID, Theatre_Id, Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Show ADD CONSTRAINT Movie_has_A_Showtime FOREIGN KEY (Show_Id) REFERENCES ShowTime (Show_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Theatre ADD CONSTRAINT Theatre_has_a_location FOREIGN KEY (Location_Id) REFERENCES Location (Location_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Genre ADD CONSTRAINT Movie_has_a_genre FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Genre ADD CONSTRAINT Genre_is_in_Movie FOREIGN KEY (Genre_Id) REFERENCES Genre (Genre_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Episode_Genre ADD CONSTRAINT Episode_has_a_genre FOREIGN KEY (Episode_Id, Season_ID, Series_Id) REFERENCES Episode (Episode_Id, Season_ID, Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Episode_Genre ADD CONSTRAINT Genre_is_in_episode FOREIGN KEY (Genre_Id) REFERENCES Genre (Genre_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Cast ADD CONSTRAINT Movie_has_Actors FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Cast ADD CONSTRAINT Person_acts_in_movies FOREIGN KEY (Person_Id) REFERENCES Person (Person_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Crew ADD CONSTRAINT Movie_has_crew FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Crew ADD CONSTRAINT Person_works_in_movies FOREIGN KEY (Person_Id) REFERENCES Person (Person_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Genre ADD CONSTRAINT TVSeries_has_a_genre FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Genre ADD CONSTRAINT Genre_is_in_series FOREIGN KEY (Genre_Id) REFERENCES Genre (Genre_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE WatchList ADD CONSTRAINT Customer_has_a_watchlist FOREIGN KEY (User_Id) REFERENCES Customer (User_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Production ADD CONSTRAINT Movie_is_produced_by_company FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Production ADD CONSTRAINT Company_produces_movies FOREIGN KEY (Company_Id) REFERENCES Production_Company (Company_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Production ADD CONSTRAINT TV_series_is_produced_by_company FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Production ADD CONSTRAINT Production_Company_Produces_TV_Series FOREIGN KEY (Company_Id) REFERENCES Production_Company (Company_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Cast ADD CONSTRAINT TV_Series_has_cast FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Cast ADD CONSTRAINT Person_acts_in_series FOREIGN KEY (Person_Id) REFERENCES Person (Person_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Crew ADD CONSTRAINT TV_Series_has_crew FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Crew ADD CONSTRAINT Person_works_in_TV_series FOREIGN KEY (Person_Id) REFERENCES Person (Person_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Review ADD CONSTRAINT Customer_gives_reviews_for_movies FOREIGN KEY (User_Id) REFERENCES Customer (User_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Review ADD CONSTRAINT Movie_is_reviewed_by_customers FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Ticket_Purchased ADD CONSTRAINT Customer_Purchases_Tickets FOREIGN KEY (User_Id) REFERENCES Customer (User_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Ticket_Purchased ADD CONSTRAINT Tickets_Sold_of_Movie FOREIGN KEY (Screen_ID, Theatre_Id, Movie_Id, Show_Id) REFERENCES Movie_Show (Screen_ID, Theatre_Id, Movie_Id, Show_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Review ADD CONSTRAINT Customer_gives_reviews_for_TV_Series FOREIGN KEY (User_Id) REFERENCES Customer (User_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Review ADD CONSTRAINT TV_Series_is_reviewed FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_WatchList ADD CONSTRAINT Movies_are_in_watchlist FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_WatchList ADD CONSTRAINT Customer_has_movies_in_watchlist FOREIGN KEY (WatchList_Id, User_Id) REFERENCES WatchList (WatchList_Id, User_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_WatchList ADD CONSTRAINT TV_Series_is_in_watchlist FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_WatchList ADD CONSTRAINT WatchList_has_TV_Series FOREIGN KEY (WatchList_Id, User_Id) REFERENCES WatchList (WatchList_Id, User_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_News ADD CONSTRAINT Relationship96 FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_News ADD CONSTRAINT aBcd FOREIGN KEY (News_Id) REFERENCES News (News_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_News ADD CONSTRAINT Relationship98 FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_News ADD CONSTRAINT abcd FOREIGN KEY (News_Id) REFERENCES News (News_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Header ADD CONSTRAINT Award_show_has_a_cate;ry FOREIGN KEY (AwardShow_Id) REFERENCES Award_Show (AwardShow_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Header ADD CONSTRAINT Awardcate;ry_is_of_a_show FOREIGN KEY (Award_Cate;ry_Id) REFERENCES Award_Cate;ry (Award_Cate;ry_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Nomination ADD CONSTRAINT Award_has_nominations FOREIGN KEY (AwardShow_Id, Award_Cate;ry_Id) REFERENCES Award_Header (AwardShow_Id, Award_Cate;ry_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Nominated_Person ADD CONSTRAINT NomineePerson_wins_award FOREIGN KEY (Nominee_Id, AwardShow_Id, Award_Cate;ry_Id) REFERENCES Award_Nomination (Nominee_Id, AwardShow_Id, Award_Cate;ry_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Nominated_Person ADD CONSTRAINT Person_wins_award FOREIGN KEY (Person_Id) REFERENCES Person (Person_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Nominated_Person ADD CONSTRAINT Movie_Actor_is_nominated FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Award_Nominated_Person ADD CONSTRAINT TV_Actor_is_Nominated FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Nomination ADD CONSTRAINT Movie_is_Nominated FOREIGN KEY (Movie_Id) REFERENCES Movie (Movie_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Movie_Nomination ADD CONSTRAINT NomineeMovie_wins_an_award FOREIGN KEY (Nominee_Id, AwardShow_Id, Award_Cate;ry_Id) REFERENCES Award_Nomination (Nominee_Id, AwardShow_Id, Award_Cate;ry_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Nomination ADD CONSTRAINT Nominee_series_wins_award FOREIGN KEY (Nominee_Id, AwardShow_Id, Award_Cate;ry_Id) REFERENCES Award_Nomination (Nominee_Id, AwardShow_Id, Award_Cate;ry_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Series_Nomination ADD CONSTRAINT TV_Series_is_nominated_for_award FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE AwardShow_Location ADD CONSTRAINT Location_hosts_Awardshow FOREIGN KEY (Location_Id) REFERENCES Location (Location_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE AwardShow_Location ADD CONSTRAINT AwardShow_has_a_location FOREIGN KEY (AwardShow_Id) REFERENCES Award_Show (AwardShow_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Season ADD CONSTRAINT TVSeries_has_Seasons FOREIGN KEY (Series_Id) REFERENCES Tv_Series (Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Episode ADD CONSTRAINT Season_has_episodes FOREIGN KEY (Season_ID, Series_Id) REFERENCES Season (Season_ID, Series_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Episode ADD CONSTRAINT Channel_hosts_Episode FOREIGN KEY (Channel_Id) REFERENCES Channel (Channel_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;

ALTER TABLE Episode ADD CONSTRAINT Episodes_are_at_a_showtime FOREIGN KEY (Show_Id) REFERENCES ShowTime (Show_Id) ON UPDATE NO ACTION ON DELETE NO ACTION
;


