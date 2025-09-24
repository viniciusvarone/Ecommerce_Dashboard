# Visão geral da tabela fato (vendas) e da tabela dimensão (produtos)

SELECT * FROM vendas;
SELECT * FROM produtos;

# Corrigindo a nomenclatura das colunas 

ALTER TABLE vendas
CHANGE COLUMN ï»¿ID_Venda ID_Venda BIGINT NOT NULL;

ALTER TABLE produtos 
CHANGE COLUMN ï»¿ID_Produto ID_Produto INT NOT NULL;

# Deletando os valores duplicados

	-- para eliminar as duplicações de ID_Venda, optei pela criação de um id auto-increment artificial 

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE vendas 
ADD COLUMN id BIGINT AUTO_INCREMENT PRIMARY KEY;

DELETE FROM vendas
WHERE id NOT IN (
	SELECT id_a_manter FROM (
		SELECT MIN(id) as id_a_manter
		FROM vendas
		GROUP BY ID_Venda
        ) as T
);

	-- agora podemos remover o id temporário
ALTER TABLE vendas
DROP COLUMN id;

# Alterando os tipos de dados e as restrições das colunas

ALTER TABLE vendas
MODIFY COLUMN Data_Venda DATE,
MODIFY COLUMN Estado CHAR(2),
ADD PRIMARY KEY (ID_Venda); 

ALTER TABLE produtos
MODIFY COLUMN Produto VARCHAR(100),
MODIFY COLUMN Categoria VARCHAR(50); 

desc produtos;

# Padronizando valores decimais

ALTER TABLE vendas 
MODIFY COLUMN valor_total DECIMAL (10,2),
MODIFY COLUMN Preco_Unitario DECIMAL (10,2);

# Tratando a codificação de caracteres

	-- para corrigir os caracteres da tabela produtos, decidi reimportar seus dados modificando seu charset no momento da importação
    
TRUNCATE TABLE produtos;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/produtos.csv'
INTO TABLE produtos
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM produtos;

# Estabelecendo a chave estrangeira 

ALTER TABLE produtos
ADD PRIMARY KEY (ID_Produto);

ALTER TABLE vendas 
ADD CONSTRAINT fk_vendas_produtos
FOREIGN KEY (ID_Produto) REFERENCES produtos(ID_Produto);

# Alguns registros da tabela 'vendas' não possuem valor na coluna Estado. Estabeleceremos, então, um valor default para esses casos

SET SQL_SAFE_UPDATES = 0;

UPDATE vendas
SET Estado = 'ND' 
WHERE Estado = '';

SET SQL_SAFE_UPDATES = 1;



    

    
    


