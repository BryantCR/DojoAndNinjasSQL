CREATE DATABASE dojosandninjas;

USE dojosandninjas;

CREATE TABLE dojos(
	dojos_id INT PRIMARY KEY NOT NULL,
    dojos_name VARCHAR(30) NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);
SELECT *
FROM dojos;
CREATE TABLE ninjas(
	id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    age INT,
    dojos_id INT NOT NULL,
    FOREIGN KEY (dojos_id) 
		REFERENCES dojos(dojos_id)
        ON DELETE CASCADE,
    created_at DATETIME,
    updated_at DATETIME
);

SELECT *
FROM ninjas;
/*////////////////////////////////////////////////////////////////////////////////////////////////////*/
INSERT INTO dojos( dojos_id, dojos_name, created_at, updated_at )
VALUES  ( 1, 'Alex', SYSDATE(), SYSDATE() ),
		( 2, 'Michael', SYSDATE(), SYSDATE() ),
        ( 3, 'Julieta', SYSDATE(), SYSDATE() );
        
DELETE FROM dojos
WHERE dojos_id < 4;

INSERT INTO dojos( dojos_id, dojos_name, created_at, updated_at )
VALUES  ( 4, 'Cobra', SYSDATE(), SYSDATE() ),
		( 5, 'Palma', SYSDATE(), SYSDATE() ),
        ( 6, 'spider', SYSDATE(), SYSDATE() );
/*/////////////////////////////////////////////////////////////////////////////////////////////////////*/
INSERT INTO ninjas( id, first_name, last_name, age, dojos_id, created_at, updated_at)
VALUES  ( 1, 'Alex', 'Miller', 19, 4, SYSDATE(), SYSDATE() ),
		( 2, 'Michael', 'Garro', 18, 4, SYSDATE(), SYSDATE() ),
        ( 3, 'Julieta', 'Venegas', 20, 4, SYSDATE(), SYSDATE() );
INSERT INTO ninjas( id, first_name, last_name, age, dojos_id, created_at, updated_at)
VALUES  ( 11, 'Juan', 'Miller', 33, 5, SYSDATE(), SYSDATE() ),
		( 22, 'Tortu', 'Garro', 18, 5, SYSDATE(), SYSDATE() ),
        ( 33, 'Jason', 'Venegas', 29, 5, SYSDATE(), SYSDATE() );
INSERT INTO ninjas( id, first_name, last_name, age, dojos_id, created_at, updated_at)
VALUES  ( 111, 'Juana', 'Miller', 40, 6, SYSDATE(), SYSDATE() ),
		( 222, 'Kate', 'Garro', 17, 6, SYSDATE(), SYSDATE() ),
        ( 333, 'Allison', 'Venegas', 25, 6, SYSDATE(), SYSDATE() );

/*/////////////////////////////////////////////////////////////////////////////////////////////////////*/
SELECT *
FROM ninjas
where dojos_id = 4;

SELECT *
FROM ninjas
where dojos_id = 6;

SELECT dojos_id
FROM ninjas
where id = 333;
