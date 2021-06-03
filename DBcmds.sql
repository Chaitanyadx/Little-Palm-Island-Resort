

CREATE TABLE rooms (
  roomno int(11) DEFAULT NULL,
  roomtype varchar(30) DEFAULT NULL
) ;




CREATE TABLE contact (
  name varchar(25) DEFAULT NULL,
  email varchar(25) DEFAULT NULL,
  phone int(10) DEFAULT NULL,
  message varchar(500) NOT NULL
); 



CREATE TABLE degree (
  name varchar(25) DEFAULT NULL,
  dob date DEFAULT NULL,
  enrno varchar(11) NOT NULL,
  credits int(11) NOT NULL,
  options int(11) NOT NULL,
  rel_name text NOT NULL,
  address varchar(50) NOT NULL,
  photo blob NOT NULL,
  PRIMARY KEY (`enrno`)
);



CREATE TABLE dining (
  fname varchar(25) DEFAULT NULL,
  lname varchar(25) DEFAULT NULL,
  members int(2) unsigned DEFAULT NULL,
  contact int(10) DEFAULT NULL,
  meal varchar(20) NOT NULL
) ;



CREATE TABLE ratelist (
  room_type varchar(30) DEFAULT NULL,
  rate int(11) DEFAULT NULL
); 




CREATE TABLE reservation(
  fname varchar(25) DEFAULT NULL,
  lname varchar(25) DEFAULT NULL,
  email varchar(40) DEFAULT NULL,
  adult int(10) unsigned DEFAULT NULL,
  child int(10) unsigned DEFAULT NULL,
  address varchar(50) DEFAULT NULL,
  city varchar(30) DEFAULT NULL,
  rstate varchar(30) DEFAULT NULL,
  pincode int(10) unsigned DEFAULT NULL,
  contact int(10) unsigned DEFAULT NULL,
  num_days int(10) unsigned DEFAULT NULL,
  roomtype varchar(50) DEFAULT NULL,
  roomno int(10) unsigned DEFAULT NULL,
  arrival date DEFAULT NULL,
  depart date DEFAULT NULL
);




CREATE TABLE room_date (
  roomno int(11) DEFAULT NULL,
  check_in date DEFAULT NULL,
  check_out date DEFAULT NULL
); 

