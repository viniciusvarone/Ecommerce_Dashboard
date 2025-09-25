# Ecommerce_Dashboard
![Dashboard](https://github.com/viniciusvarone/assets/blob/main/proj_ecom.png)

## 📝 Descrição
Este repositório apresenta um projeto de análise de dados aplicado a um contexto fictício de comércio eletrônico. Contém os dados brutos e tratados, scripts SQL de limpeza e análise, e um dashboard feito em Power BI. O arquivo PBIX, como se pode averiguar, inclui as fórmulas DAX equivalentes aos comandos de análise usados no servidor MySQL.


## 📂 Estrutura do Repositório
* `Dados Brutos/` → contém os dados originais.
* `Dados Tratados/` → contém os dados após o tratamento em SQL. 
* `Script/` → Scripts SQL de tratamento e análise de dados.
* `Dashboard-ecommerce.pbix` → Dashboard em pbix.
* `Dashboard-ecommerce.pdf` → Dashboard em pdf.

## 📊 Dados
Os dados foram gerados por inteligência artificial e simulam as vendas de um comércio no ano de 2023 nas regiões sul e sudeste. O dataset é composto por duas tabelas relacionadas: a de vendas e a de produtos; a primeira possui 1000 registros únicos e 7 colunas, enquanto a segunda possui 16 registros e 3 colunas.

## 🛠️ Tecnologias Utilizadas
* MySQL Server & Workbench
* Power BI

## 🎯 Objetivos
* Fornecer uma visão consolidada das vendas e dos produtos do e-commerce.
* Permitir a exploração dos dados por meio do SQL e a visualização através do Power BI.
* Demonstrar o uso de ferramentas de análise de dados aplicadas ao comércio eletrônico, integrando banco de dados relacionais a painéis interativos.
  
## 🔍 Conclusões e Insights iniciais
- **Vendas ao longo do tempo**: Maior faturamento nos meses de janeiro, julho e agosto. O último trimestre do ano (outubro, novembro, dezembro) é marcado por baixo faturamento. Comparando a média de vendas do último trimestre (aprox. $31,64 mil) com a média de vendas dos meses de maior faturamento ($47,59 mil), nota-se uma queda de aproximadamente 33,5%. 
- **Faturamento por produto**:
  - **Mais vendidos**: Os três produtos com maior faturamento: mouse gamer ($157.50 mil), teclado mecânico ($75,60 mil) e tablet Z ($55,80 mil); os dois primeiros pertencem à                  categoria "periféricos", enquanto o último pertence à categoria "eletrônicos". A soma de faturamento deste três produtos consiste em 57% da receita total do ecommerce.
  - **Menos vendidos**: Os três produtos com menor faturamento: calça jeans ($3,46 mil), tenis esportivo ($4,34 mil) e livro romance ($10,08 mil); os dois primeiros pertencem à categoria      de roupas, enquanto o último, à de livros. 
- **Distribuição por região**: Os três estados com maior faturamento - Rio Grande do Sul, Rio de Janeiro e Minas Gerais. Observação: o estado que obteve maior faturamento, Rio grande do Sul, é também o que possui menor quantidade de vendas. 
- **Ticket médio**: o valor aproximado do gasto médio por cliente é de $507. A categoria Periféricos possui o maior valor de ticket médio, aprox. $1.000.

## Contato
Para dúvidas ou sugestões, entrar em contato pelo email: vinicius.varone008@gmail.com
