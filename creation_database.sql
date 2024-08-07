create table "Empresas" (
	"Id" serial primary key,
	"Nome" Varchar(255) not null,
	"CNPJ" char(14) not null
);

create table "Contato" (
	"Id" serial primary key,
	"Empresa_Id" int not null REFERENCES "Empresas"("Id"),
	"Numero" varchar(20),
	"Email" varchar(255)
);

create table "Endereco" (
	"Id" serial primary key,
	"Cidade" varchar(255) not null,
	"Pais" varchar(255) not null,
	"Estado" varchar(255) not null,
	"Numero" varchar(255),
	"Empresa_Id" int not null references "Empresas"("Id")
);

create table "Contratos" (
	"Id" serial primary key,
	"Aceite" boolean not null,
	"Valor" Decimal(19,2) not null,
	"Recebido" date not null,
	"Previsao" date,
	"Finalizado" date,
	"CreatedAt" date not null,
	"UpdatedAt" date,
	"DeletedAt" date,
	"Empresa_Id" int not null references "Empresas"("Id")
);

create table "FeedBack" (
	"Id" serial primary key,
	"Feedback" varchar(25) not null,
	"Motivo" varchar(255) not null,
	"CreatedAt" date not null,
	"UpdatedAt" date,
	"DeletedAt" date,
	"Contrato_Id" int not null references "Contratos"("Id")
);