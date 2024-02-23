CREATE TABLE cliente 
( 
 id_cliente INT(5) PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 email VARCHAR(100) NOT NULL  
); 

CREATE TABLE quarto 
( 
 id_quarto INT(3) PRIMARY KEY AUTO_INCREMENT,  
 descricao VARCHAR(100) NOT NULL,  
 idcategoria INT(2)
); 

CREATE TABLE categoria 
( 
 id_categoria INT(2) PRIMARY KEY AUTO_INCREMENT,  
 descricao VARCHAR(100) NOT NULL,  
 valor DECIMAL(6,2) NOT NULL
); 

CREATE TABLE reserva 
( 
 dt_inicial DATE NOT NULL,  
 dt_final DATE NOT NULL,  
 idcliente INT(5),  
 idquarto INT(3)  
); 

ALTER TABLE quarto ADD FOREIGN KEY(idcategoria) REFERENCES categoria (id_categoria);
ALTER TABLE reserva ADD FOREIGN KEY(idcliente) REFERENCES cliente (id_cliente);
ALTER TABLE reserva ADD FOREIGN KEY(idquarto) REFERENCES quarto (id_quarto);
