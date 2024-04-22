CREATE TABLE PRODUTO2 (ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                    NOME VARCHAR2(30),
                    TIPO VARCHAR2(30),
                    MARCAR VARCHAR2(30));
                    
                    
DECLARE
    v_nome   produto2.nome%TYPE := 'MOUSE';
    v_tipo   produto2.tipo%TYPE := 'PERIFERICO';
    v_marcar produto2.maRcar%TYPE:= 'DELL';
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
END;


