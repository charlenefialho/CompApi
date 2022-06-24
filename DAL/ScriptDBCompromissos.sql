CREATE DATABASE DB_COMPROMISSOS 

GO
use DB_COMPROMISSOS

GO
CREATE TABLE TB_TIPO_PARTICIPANTE
( 
  ID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TB_TIPO_PARTICIPANTE PRIMARY KEY,
  TIPO_PARTICIPANTE VARCHAR(50) not null
)
INSERT INTO TB_TIPO_PARTICIPANTE VALUES ('Professor')
INSERT INTO TB_TIPO_PARTICIPANTE VALUES ('Aluno')

GO
CREATE TABLE TB_PARTICIPANTE
(
 ID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TB_PARTICIPANTE PRIMARY KEY,
 ID_TIPO_PARTICIPANTE INT NOT NULL CONSTRAINT FK_PART_TB_TIPO_PARTICIPANTE FOREIGN KEY REFERENCES TB_TIPO_PARTICIPANTE(ID),
 TX_NOME VARCHAR (50) NOT NULL,
 TX_CPF VARCHAR(11) NOT NULL,
 TX_EMAIL VARCHAR(50) NOT NULL
)

go
INSERT INTO TB_PARTICIPANTE VALUES (1, 'Professor da Silva', '123', 'psilva@gmail.com');
INSERT INTO TB_PARTICIPANTE VALUES (2, 'Aluno Borges', '321', 'aborges@gmail.com');
