with
    agencias as (
        select * 
        from {{ref('stg_erp__agencias')}}
    )

    , localidades as (
        select * 
        from {{ref('stg_erp__localidades')}}
    )

    , agencias_enriquecido as (
        select
        agencias.pk_agencia
        , agencias.nome_agencia
        , agencias.tipo_agencia_fd
        , agencias.endereco_agencia
        , agencias.data_abertura_agencia
        , localidades.cidade as cidade_agencia
        from agencias
        left join localidades on agencias.fk_localidade = localidades.pk_localidade
    )

    select *
    from agencias_enriquecido