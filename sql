CREATE TABLE USERS(
gPlusUserID VARCHAR(255),
userName VARCHAR(255),
jobs VARCHAR(255),
currentPlace VARCHAR(255),
previousPlace VARCHAR(255),
education VARCHAR(255)
)row format delimited fields terminated by '\t';

load data inpath '/user/cloudera/google-data/users.csv' into table USERS;

CREATE TABLE REVIEWS(
gPlusPlaceID VARCHAR(255),
gPlusUserID VARCHAR(255),
rating VARCHAR(255),
reviewerName VARCHAR(255),
reviewerText VARCHAR(2047),
categories VARCHAR(255),
reviewTime VARCHAR(63)
)row format delimited fields terminated by '\t';

load data inpath '/user/cloudera/google-data/reviews.csv' into table REVIEWS;

CREATE TABLE PLACES(
gPlusPlaceID VARCHAR(255),
name VARCHAR(255),
price VARCHAR(7),
address VARCHAR(255),
hours VARCHAR(255),
phone VARCHAR(255),
closed boolean
)row format delimited fields terminated by '\t';

load data inpath '/user/cloudera/google-data/places.csv' into table PLACES;

