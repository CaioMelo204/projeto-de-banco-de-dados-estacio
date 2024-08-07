-- Query para obter a empresa por um Like e os contratos dessa empresa
select e."Id", e."Nome", e."CNPJ", c."Escopo", c."Aceite", c."Valor", c."Recebido", c."Previsao", c."Finalizado"
from "Empresas" e
join "Contratos" c on c."Empresa_Id" = e."Id"
where e."Nome" like '%Goo%'

-- Query para obter os contratos que ainda estão ativos
select e."Id", e."Nome", e."CNPJ", c."Escopo", c."Aceite", c."Valor", c."Recebido", c."Previsao", c."Finalizado"
from "Empresas" e
join "Contratos" c on c."Empresa_Id" = e."Id"
where c."Aceite" = true and c."Finalizado" is null;

-- Query para obter os contratos que foram finalizados
select e."Id", e."Nome", e."CNPJ", c."Escopo", c."Aceite", c."Valor", c."Recebido", c."Previsao", c."Finalizado"
from "Empresas" e
join "Contratos" c on c."Empresa_Id" = e."Id"
where c."Aceite" = true and c."Finalizado" is not null;

-- Query para obter os endereços de contato de uma empresa usando o Like
select e."Id", e."Nome", e."CNPJ", c."Numero",  c."Email"
from "Empresas" e
join "Contato" c on e."Id" = c."Empresa_Id"
where e."Nome" like '%Af%';

-- Query para obter o endereço de uma empresa usando o Like
select e."Id", e."Nome", e."CNPJ", e2."Cidade", e2."Pais", e2."Estado", e2."Numero", e2."CEP"
from "Empresas" e
join "Endereco" e2  on e."Id" = e2."Empresa_Id"
where e."Nome" like '%Nu%';

-- Query para obter o FeedBack e os contratos de uma determinada empresa

select e."Nome", e."CNPJ", c."Escopo", c."Valor", c."Finalizado", fb."Feedback", fb."Motivo"
from "Empresas" e
left join "Contratos" c ON c."Empresa_Id" = e."Id"
left join "FeedBack" fb ON c."Id" = fb."Contrato_Id"
where e."Nome" like '%Ama%'