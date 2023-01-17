-- simple view; 
CREATE VIEW vw_marketplace AS
SELECT marketplace.descricao 
FROM marketplace
WHERE marketplace.descricao IS NOT NULL;

-- simple select; 
SELECT cliente.recebimento, cliente.CPF AS 'compra_efetivada'
FROM cliente 
WHERE recebimento = true; 

SELECT fornecedores.codigo, fornecedores.repasse AS 'dados_fornecedor'
FROM fornecedores 
WHERE codigo AND repasse is not null;
