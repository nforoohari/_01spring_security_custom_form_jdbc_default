

DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;



CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` 
VALUES 
('mahsa','{noop}1234',1),
('ashkan','{noop}1234',1),
('neda','{noop}1234',1);



CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `authorities` 
VALUES 
('neda','ROLE_EMPLOYEE'),
('ashkan','ROLE_EMPLOYEE'),
('ashkan','ROLE_MANAGER'),
('mahsa','ROLE_EMPLOYEE'),
('mahsa','ROLE_MANAGER'),
('mahsa','ROLE_ADMIN');


