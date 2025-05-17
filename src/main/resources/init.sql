

DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;



CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `users` 
VALUES 
('mahsa','{bcrypt}$2a$10$nr64B.4AKVh2kcmc5jRcUucp.3fHWS2zzispXKEYT76i83mT2Syp.',1),
('ashkan','{bcrypt}$2a$10$nr64B.4AKVh2kcmc5jRcUucp.3fHWS2zzispXKEYT76i83mT2Syp.',1),
('neda','{bcrypt}$2a$10$nr64B.4AKVh2kcmc5jRcUucp.3fHWS2zzispXKEYT76i83mT2Syp.',1);




CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities4_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `authorities` 
VALUES 
('neda','ROLE_EMPLOYEE'),
('ashkan','ROLE_EMPLOYEE'),
('ashkan','ROLE_MANAGER'),
('mahsa','ROLE_EMPLOYEE'),
('mahsa','ROLE_MANAGER'),
('mahsa','ROLE_ADMIN');