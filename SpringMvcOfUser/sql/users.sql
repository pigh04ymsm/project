CREATE TABLE `t_user`(
	`USER_ID` int(20) NOT NULL AUTO_INCREMENT,
	`USER_NAME` varchar(50) NOT NULL,
	`PASSWORDS` varchar(20) NOT NULL,
	`sex` varchar(12) DEFAULT NULL,
	`age` int(11) DEFAULT NULL,
	`birthday` date NULL DEFAULT NULL,
	`email` varchar(50) DEFAULT NULL,
	PRIMARY KEY `USER_ID`,
	UNIQUE KEY `USER_NAME_UNIQUE` (`USER_NAME`),
	UNIQUE KEY `email_UNIQUE` (`email`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;