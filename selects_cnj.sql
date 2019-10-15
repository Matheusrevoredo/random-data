    SELECT distinct cod_assunto, cod_assunto_novo  FROM selo_justica.tb_assuntos_trt13
        where cod_assunto_novo
            not in (select cod_assunto
                from selo_justica.tb_assuntos_cnj
                    where tipo_noh = 'folha' or nivel >=3)    
					
					
	SELECT  cod_assunto, cod_assunto_novo
	FROM selo_justica.tb_assuntos_trt13
		where cod_assunto_novo
			not in (select cod_assunto
				from selo_justica.tb_assuntos_cnj)
													
		

    SELECT distinct cod_assunto, cod_assunto_pai_novo
    FROM selo_justica.tb_assuntos_trt13
        where cod_assunto_pai_novo
            not in (select cod_assunto
                from selo_justica.tb_assuntos_cnj
                    where tipo_noh = 'folha' or nivel >=2)    