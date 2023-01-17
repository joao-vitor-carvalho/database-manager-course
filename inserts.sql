insert into fornecedores(codigo, repasse) values ('DF-01', 'produto01');
insert into fornecedores(codigo, repasse) values ('BA-01', 'produto02');
insert into fornecedores(codigo, repasse) values ('RJ-01', 'produto03');
insert into fornecedores(codigo, repasse) values ('SP-01', 'indisponível');

insert into encaminha(encaminhamentoNumero, codigo) values ('01', 'DF-01');
insert into encaminha(encaminhamentoNumero, codigo) values ('02', 'BA-01');
insert into encaminha(encaminhamentoNumero, codigo) values ('03', 'RJ-01');
insert into encaminha(encaminhamentoNumero, codigo) values ('04', 'SP-01');

insert into marketplace(codigo, frete, descricao) values ('01-01', 'Frete01', 'descrição produto');
insert into marketplace(codigo, frete, descricao) values ('01-02', 'Frete02', 'descrição produto');
insert into marketplace(codigo, frete, descricao) values ('01-03', 'Frete03', 'descrição produto');
insert into marketplace(codigo, frete, descricao) values ('01-04', 'Frete04', 'descrição produto');

insert into entrega(codigo, CPF) values ('02-01', '723.049.097-90');
insert into entrega(codigo, CPF) values ('02-02', '013.125.297-94');
insert into entrega(codigo, CPF) values ('02-03', '723.444.092-11');
insert into entrega(codigo, CPF) values ('02-04', '017.075.767-50');

insert into cliente(CPF, recebimento, autenticidade) values ('723.049.097-90', true, true);
insert into cliente(CPF, recebimento, autenticidade) values ('013.125.297-94', true, true);
insert into cliente(CPF, recebimento, autenticidade) values ('723.444.092-11', true, false);
insert into cliente(CPF, recebimento, autenticidade) values ('017.075.767-50', false, false);
