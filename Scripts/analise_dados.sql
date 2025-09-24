USE proj_ecommerce;

# Receita total

SELECT SUM(valor_total) AS receita_total 
FROM vendas;

# Faturamento por região 

SELECT Estado, 
	   SUM(valor_total) AS total_estado,
       ROUND(SUM(valor_total) * 100 / (SELECT SUM(valor_total) FROM vendas), 2) AS '%'
FROM vendas
GROUP BY Estado ORDER BY total_estado DESC;

# Quantidade total de pedidos

SELECT COUNT(ID_Venda) as total_pedidos 
FROM vendas;

# Quantidade total de produtos vendidos

SELECT SUM(Quantidade) as produtos_vendidos
FROM vendas; 

# Faturamento por categoria de produto 

SELECT p.Categoria, 
	   SUM(v.valor_total) as faturamento,
	   ROUND(SUM(v.valor_total) * 100 / (SELECT SUM(valor_total) FROM vendas), 2) AS '%'
FROM vendas v 
JOIN produtos p 
ON v.ID_Produto = p.ID_Produto
GROUP BY Categoria
ORDER BY faturamento DESC;

# Faturamento por produto 

SELECT p.Produto, 
	   SUM(v.valor_total) as faturamento,
       ROUND(SUM(v.valor_total) * 100 / (SELECT SUM(valor_total) FROM vendas), 2) AS '%'
FROM vendas v
JOIN produtos p 
ON v.ID_Produto = p.ID_Produto
GROUP BY Produto
ORDER BY faturamento DESC;

# Faturamento por mês 

SELECT MONTH (Data_Venda) as mes, 
	SUM(valor_total) as total,
	ROUND(SUM(valor_total) * 100 / (SELECT SUM(valor_total) FROM vendas), 2) AS '%' 
FROM vendas
GROUP BY mes
ORDER BY mes;






