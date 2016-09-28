CREATE TABLE carro (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE acessorio (
    codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE carro_acessorio (
    codigo_carro BIGINT(20) NOT NULL,
    codigo_acessorio BIGINT(20) NOT NULL,
    PRIMARY KEY (codigo_carro, codigo_acessorio),
    FOREIGN KEY (codigo_carro) REFERENCES carro(codigo),
    FOREIGN KEY (codigo_acessorio) REFERENCES acessorio(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;