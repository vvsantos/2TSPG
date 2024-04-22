CREATE TABLE PRODUTO2 (ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                    NOME VARCHAR2(30),
                    TIPO VARCHAR2(30),
                    MARCAR VARCHAR2(30));
                    
                    
CREATE OR REPLACE PROCEDURE SP_INSERT_PRODUTO(
    v_nome   produto2.nome%TYPE,
    v_tipo   produto2.tipo%TYPE,
    v_marcar produto2.maRcar%TYPE) 
    AS 
BEGIN
    INSERT INTO produto2 (
        nome,
        tipo,
        marcar
    ) VALUES (
        v_nome,
        v_tipo,
        v_marcar
    );

    COMMIT;
END c;


select * from produto2

call SP_INSERT_PRODUTO ('teclado','periferico','HP');
exec SP_INSERT_PRODUTO ('teclado','periferico','HP');
execute SP_INSERT_PRODUTO ('teclado','periferico','HP');



