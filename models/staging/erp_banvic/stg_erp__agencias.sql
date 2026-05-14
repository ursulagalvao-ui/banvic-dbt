with
    fonte_agencias as (
        select * 
        from {{ source("erp", "agencias") }}),
    renomeado as (
        select 
        cast(cod_agencia as int) as pk_agencia
        , cast(cod_localidade as int) as fk_localidade
        , nome as nome_agencia
        , endereco as endereco_agencia
        , data_abertura as data_abertura_agencia
        , tipo_agencia as tipo_agencia_fd

        from fonte_agencias
    )
select *
from renomeado
