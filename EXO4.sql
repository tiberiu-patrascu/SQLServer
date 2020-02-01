CREATE TABLE LIVRES(
ISBN INT PRIMARY KEY NOT NULL,
titre VARCHAR(50) NOT NULL 
);
CREATE TABLE EXEMPLAIRES(
numExemple INT NOT NULL,
ISBN INT NOT NULL,
CONSTRAINT FK_ISBN FOREIGN KEY (ISBN) REFERENCES LIVRES(ISBN),
CONSTRAINT CK_ETAT CHECK (etat IN ('D:DISPONIBLE','E:EMPRUNTE','P:PERDU')),
CONSTRAINT PK_EXEMPL PRIMARY KEY(ISBN,numExemple),
etat VARCHAR (20) DEFAULT 'D' NOT NULL
);