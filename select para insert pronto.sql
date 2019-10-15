SELECT 'INSERT INTO selo_justica.tb_mapeamento_assuntos(cod_assunto, cod_assunto_novo, cod_assunto_pai_novo, sistema) VALUES ('||
	cod_assunto_sistema||', '||cod_assunto_cnj||', '||COAlESCE(TO_CHAR(cod_assunto_cnj,'0'), 'NULL')||', '''||sistema||''');'
	FROM selo_justica.tb_mapeamento_assuntos_cnj;