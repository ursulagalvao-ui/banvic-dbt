with
    fonte_colaborador_agencia as (
        select *
        from {{ source('erp', 'colaborador_agencia') }}
    )
    , renomeado as (
        select
            cast(cod_colaborador as int) as pk_cod_colaborador
            , cast(cod_agencia as int) as cod_agencia_colaborador
        from fonte_colaborador_agencia
    )
    
select * from renomeado
