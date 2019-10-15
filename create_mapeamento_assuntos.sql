CREATE TABLE selo_justica.tb_mapeamento_assuntos
(
    cod_assunto integer NOT NULL,
    cod_assunto_novo integer,
    cod_assunto_pai_novo integer,
    sistema character varying(5) COLLATE pg_catalog."default" NOT NULL DEFAULT 'PJE'::character varying,
    CONSTRAINT tb_mapeamento_assuntos_pk PRIMARY KEY (cod_assunto)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE selo_justica.tb_mapeamento_assuntos
    OWNER to desenvolvedor;