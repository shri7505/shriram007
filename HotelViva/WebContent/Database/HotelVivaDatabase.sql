CREATE TABLE `employee` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `mobile` double NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `employeeid` varchar(20) DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cust_reserved_room11` (
  `roomno` int(11) NOT NULL,
  `standard` varchar(80) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`roomno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `customer_new11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` double DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `cid` varchar(30) DEFAULT NULL,
  `details` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `roomno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roomno` (`roomno`),
  CONSTRAINT `customer_new11_ibfk_1` FOREIGN KEY (`roomno`) REFERENCES `cust_reserved_room11` (`roomno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
