-- valores ficticios para teste
Insert into "Empresas"("Nome", "CNPJ", "Created_At")
values
('Magazine_luiza', '12159054000183', NOW()),
('Afinz', '91582215000113', NOW()),
('NuBank', '09701976000166', NOW()),
('Google', '41151688000198', NOW()),
('Amazon', '93254900000146', NOW());

insert into "Contato"("Empresa_Id", "Numero", "Email", "Created_At")
values
(1, '99999999999', 'MagazineLuizaEmailFake@fake.com', NOW()),
(2, '88888888888', 'AfinzEmailFake@fake.com', NOW()),
(3, '77777777777', 'NuBankEmailFake@fake.com', NOW()),
(4, '66666666666', 'GoogleEmailFake@fake.com', NOW()),
(5, '55555555555', 'AmazonEmailFake@fake.com', NOW());

insert into "Endereco"("Empresa_Id","Cidade","Pais","Estado","CEP","Created_At")
values
(1, 'Porto Velho', 'Brasil', 'RO', '33130250', NOW()),
(2, 'Manaus', 'Brasil', 'AM', '69088350', NOW()),
(3, 'Belém', 'Brasil', 'PA', '66033172', NOW()),
(4, 'Santana do Livramento', 'Brasil', 'RS', '97576244', NOW()),
(5, 'Paragominas', 'Brasil', 'PA', '68629088', NOW());

insert into "Contratos"("Empresa_Id","Escopo","Aceite","Valor","Recebido","Previsao","Finalizado","Created_At")
values
(1, 'criar uma api', true, 1000.25, '2020-01-01', '2021-01-01', '2021-01-01', now()),
(2, 'criar uma api', true, 2050.25, '2020-01-01', '2024-12-01', null, now()),
(3, 'criar uma api', false, 3000.25, '2021-01-01', '2021-10-01', null, now()),
(4, 'criar uma api', true, 4000.25, '2020-01-01', '2021-01-01', null, now()),
(5, 'criar uma api',true, 5000.25, '2020-01-01', null, '2021-01-01', now());

insert into "FeedBack"("Contrato_Id","Feedback","Motivo","Created_At")
values
(1, 'bom', 'foi boa a experiencia', NOW());