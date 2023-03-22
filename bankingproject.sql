use bankproject;

DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer(
    acno int(11) NOT NULL AUTO_INCREMENT,
    name char(30) DEFAULT NULL,
    address varchar(100) DEFAULT NULL,
    phone varchar(15) DEFAULT NULL,
    email varchar(80) DEFAULT NULL,
    aadhar_no varchar(20) DEFAULT NULL,
    acc_type varchar(20) DEFAULT NULL,
    status char(15) DEFAULT NULL,
    balance float(15,2) DEFAULT NULL,
    PRIMARY KEY(acno)
) ENGINE=MyISAM AUTO_INCREMENT =4 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES
(1,'Dharani', 'Tanuku', '9346063324', 'dsrbhavani@gmail.com', '1431-1234-1564', 'current', 'active', 50000),
(2,'Mohan', 'Eluru', '7569923411', 'mohankottala1@gmail.com', '4481-7537-7087', 'current', 'active', 40000),
(3,'Srikar', 'Guntur', '9390011527', 'vvnsrikar20@gmail.com', '1843-4267-2367', 'savings', 'active', 30000);

DROP TABLE IF EXISTS transaction;
CREATE TABLE IF NOT EXISTS transaction(
    tid int(11) NOT NULL AUTO_INCREMENT,
    dot date DEFAULT NULL,
    amount int(10) DEFAULT NULL,
    type char(20) DEFAULT NULL,
    acno int(10) DEFAULT NULL,
    PRIMARY KEY(tid)
) ENGINE=MyISAM AUTO_INCREMENT =4 DEFAULT CHARSET=latin1;

INSERT INTO transaction VALUES
(1, '2020-10-16', 2000, 'depoist', 1),
(2, '2020-10-15', 2000, 'depoist', 2),
(3, '2020-10-18', 1000, 'withdraw', 1);
