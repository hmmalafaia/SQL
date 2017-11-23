--------------------------------------------------------
--  Arquivo criado - Quinta-feira-Novembro-23-2017
--	Henrique Malafaia
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function CHAVE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION CHAVE (
    NUMERO IN NUMBER)
  RETURN NUMBER
IS
  dataAtual   INT;
  numero_ INT;
  soma1       INT;
  soma2       INT;
  senha       INT;
BEGIN
  SELECT TO_CHAR(TRUNC(SYSDATE),'ddmmyy') INTO dataAtual FROM DUAL;
  numero_ := NUMERO;
  soma1       := dataAtual              + numero_ + 1;
  soma2       := SOMA_DIGITO(dataAtual) + SOMA_DIGITO(numero_) + SOMA_DIGITO(1);
  senha       := soma1                  * soma2 * 123;
  RETURN SUBSTR(senha,                  -6,6);
END CHAVE;

/
