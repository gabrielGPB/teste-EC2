USE dyoung;

CREATE TABLE endereco_posto (
idEndereco_posto INT PRIMARY KEY auto_increment,
rua VARCHAR(80),
numero INT,
localidade VARCHAR(80)
);

CREATE TABLE posto (
idPosto INT PRIMARY KEY auto_increment,
nomePosto VARCHAR(80),
responsavelTI VARCHAR(80),
fk_Endereco_posto INT, foreign key (fk_Endereco_posto) references endereco_posto(idEndereco_posto)
);

CREATE TABLE cadastro_funcionario (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nomeFuncionario VARCHAR(80),
email VARCHAR(80),
cpf CHAR(11),
statusFuncionario Boolean,
senha VARCHAR(45),
cargo VARCHAR(45),
fk_posto INT, FOREIGN KEY (fk_posto) REFERENCES posto(idPosto)
);

CREATE TABLE totem (
idTotem INT PRIMARY KEY AUTO_INCREMENT,
serie VARCHAR(45),
dtInstalacao DATETIME DEFAULT CURRENT_TIMESTAMP,
statusTotem BOOLEAN,
sistema_operacional VARCHAR(45),
fk_posto INT, FOREIGN KEY (fk_posto) REFERENCES posto(idPosto)
);

CREATE TABLE dado_cpu(
id_dado_cpu INT PRIMARY KEY AUTO_INCREMENT,
uso_cpu DOUBLE,
temp_cpu DOUBLE,
data_hora_captura DATETIME DEFAULT CURRENT_TIMESTAMP,
status_coleta TINYINT,
fk_totem INT, FOREIGN KEY (fk_totem) REFERENCES totem(idTotem),
fk_posto INT, FOREIGN KEY (fk_posto) REFERENCES posto(idPosto)
);

CREATE TABLE dado_disco (
id_dado_disco INT PRIMARY KEY AUTO_INCREMENT,
uso_disco DOUBLE,
data_hora_captura DATETIME DEFAULT CURRENT_TIMESTAMP,
status_coleta TINYINT,
fk_totem INT, FOREIGN KEY (fk_totem) REFERENCES totem(idTotem),
fk_posto INT, FOREIGN KEY (fk_posto) REFERENCES posto(idPosto)
);

CREATE TABLE dado_ram (
id_dado_ram INT PRIMARY KEY AUTO_INCREMENT,
uso_ram DOUBLE,
data_hora_captura DATETIME DEFAULT CURRENT_TIMESTAMP,
status_coleta TINYINT,
fk_totem INT, FOREIGN KEY (fk_totem) REFERENCES totem(idTotem),
fk_posto INT, FOREIGN KEY (fk_posto) REFERENCES posto(idPosto)
);