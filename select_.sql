with recursive classes_excluidas as (
    select dcj.id_classe_judicial
    from tb_desc_classes_judiciais dcj
    where dcj.cd_classe_judicial in (
            '40',   -- 'PROCESSO CÍVEL E DO TRABALHO|PROCESSO DE CONHECIMENTO|PROCEDIMENTO DE CONHECIMENTO|PROCEDIMENTOS ESPECIAIS|PROCEDIMENTOS ESPECIAIS DE JURISDIÇÃO CONTENCIOSA|MONITÓRIA|'
            '257', -- 'PROCESSO CÍVEL E DO TRABALHO|OUTROS PROCEDIMENTOS|CARTAS|'
            '158', -- 'PROCESSO CÍVEL E DO TRABALHO|PROCESSO DE EXECUÇÃO|'
            '156'  -- 'PROCESSO CÍVEL E DO TRABALHO|PROCESSO DE CONHECIMENTO|PROCEDIMENTO DE CUMPRIMENTO DE SENTENÇA/DECISÃO|CUMPRIMENTO DE SENTENÇA|'
        )

    union all

    select dcj.id_classe_judicial
    from tb_desc_classes_judiciais dcj
    join classes_excluidas ce on ce.id_classe_judicial = dcj.id_classe_judicial_pai
),
saida_execucao as (
    select phf.id_processo, psa.id_classe_judicial, phf.cd_fase, phf.dta_ocorrencia
    from tb_processos_hist_fases phf
    join tb_proc_situ_atual psa on psa.id_processo = phf.id_processo
        --and psa.id_orgao_julgador in (<<idOrgaoJulgador1>>)
        and psa.id_classe_judicial not in (select id_classe_judicial from classes_excluidas)
        and psa.ind_cle = 'N'
    where phf.cd_fase <> 'CO' and phf.cd_fase <> 'ARQ'
	union
	select phf.id_processo, psa.id_classe_judicial, phf.cd_fase, phf.dta_ocorrencia
  from tb_processos_hist_fases phf
  join tb_proc_situ_atual psa on psa.id_processo = phf.id_processo
      --and psa.id_orgao_julgador in (<<idOrgaoJulgador1>>)
        and psa.id_classe_judicial not in (select id_classe_judicial from classes_excluidas)
        and psa.ind_cle = 'N'
    where phf.cd_fase = 'CO'
		and exists (
		select 1 from tb_remessa r
		where r.id_processo = phf.id_processo
		-- o motivo da remessa deve ser para processar recurso, processar reexame necessário ou para julgar AIRO
		and r.cd_motivo_remessa in ('38','7101','7263')
		-- no histórico
		and r.dta_ocorrencia <= current_timestamp)
),


relatorio as (
    select scss.id_processo, scss.id_classe_judicial, l.dta_ocorrencia as dta_liq, e.dta_ocorrencia as dta_exe
    from saida_execucao scss
    left join liquidacao l on l.id_processo = scss.id_processo
    left join execucao e on e.id_processo = scss.id_processo
)
select
    distinct pj.id_processo

from relatorio r
join tb_processos_judiciais pj on pj.id_processo = r.id_processo
join tb_desc_classes_judiciais cj on cj.id_classe_judicial = r.id_classe_judicial
where fn_get_fase_processo(pj.id_processo, with_tz_to_without_tz(current_timestamp)) <> 'ARQ'
and exists
( select
       e.id_processo
      ,e.dta_ocorrencia
      ,fn_get_classe_data(e.id_processo, with_tz_to_without_tz(current_timestamp))                                 as num_classe_interno
      ,fn_get_fase_processo(e.id_processo, with_tz_to_without_tz(current_timestamp)) as fase_atual
      ,fn_get_org_julg_data(e.id_processo,with_tz_to_without_tz(current_timestamp)) as id_orgao_julgador
    from tb_processos_hist_incid e
    where e.cd_incid = '7254' and e.id_processo = pj.id_processo -- 
    and e.tp_evento='E'
    -- no histórico
    and e.dta_ocorrencia <= current_timestamp
    -- considerar apenas as interposições não baixadas ao final do período de referência
    and fn_is_incidente_pendente(e.id_processo, e.cd_incid, e.num_seq, with_tz_to_without_tz(current_timestamp))

)
