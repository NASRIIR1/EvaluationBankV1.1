
-- Création base de donnée / si existe déjà, supprimer !--
DROP DATABASE IF EXISTS Bank;
CREATE DATABASE Bank;
USE Bank;

-- Création table des clients --
CREATE TABLE T_Customors (
	IdCust				int(4)		PRIMARY KEY AUTO_INCREMENT,
	Name				varchar(20)	NOT NULL,
	FirstName			varchar(20)	NOT NULL,
	ConnectionNumber		int(4)		NOT NULL DEFAULT 0
) ENGINE = InnoDB;


-- Ajouter des clients à votre table--

INSERT INTO T_Customors (IdCust, Name, FirstName) VALUES ( 1, 'mohamoud' ,	'TIMO' );
INSERT INTO T_Customors (IdCust, Name, FirstName) VALUES ( 2, 'Rudwaan'	,	'Hassan' );
INSERT INTO T_Customors (IdCust, Name, FirstName) VALUES ( 3, 'kayse' ,	       'guuleed' );
INSERT INTO T_Customors (IdCust, Name, FirstName) VALUES ( 4, 'Bax',	'aniga' );
INSERT INTO T_Customors (IdCust, Name, FirstName) VALUES ( 5, 'Hooyo ',	'TUUG' );
-- Afficher les clients 
SELECT * FROM T_Customors;


-- Création table des comptes
CREATE TABLE T_Counts (
	NumCt				int(4)		NOT NULL,
	DateCreation			DATE(4)		NOT NULL,
	Balance				float(20)	NOT NULL,
	Idcust				int(4)		NOT NULL	
) ENGINE = InnoDB;



-- Ajouter des comptes
INSERT INTO T_Counts(NumCt, DateCreation,Balance,IdCust) VALUES ( 1453, 22/12/1967 ,34 	,09  );
INSERT INTO T_Counts(NumCt, DateCreation,Balance,IdCust) VALUES ( 9089, 22/12/1923, 25	,8 );
INSERT INTO T_Counts(NumCt, DateCreation,Balance,IdCust) VALUES ( 1345, 22/01/2065 , 65,2 );
INSERT INTO T_Counts(NumCt, DateCreation,Balance,IdCust) VALUES ( 1563, 22/01/2090 , 433,2 );
INSERT INTO T_Counts(NumCt, DateCreation,Balance,IdCust) VALUES ( 1003, 22/01/2018 , 388,5) ;


-- Afficher les comptes 
SELECT * FROM T_Counts;

-- Création table des opérations
CREATE TABLE T_Operations (
	NumOp				int(4)		NOT NULL,
	Amount				float(4)	NOT NULL,
	NumCt				int(4)		NOT NULL	
) ENGINE = InnoDB;



-- Ajouter des opérations
INSERT INTO T_Operations(NumOp , Amount , NumCt) VALUES ( 1 ,12.4 ,1234 );
INSERT INTO T_Operations(NumOp , Amount , NumCt) VALUES ( 2 ,66    ,12345 );
INSERT INTO T_Operations(NumOp , Amount , NumCt) VALUES ( 3 ,1212  ,1212 );

-- Afficher les Opérations 
SELECT * FROM T_Operations;

