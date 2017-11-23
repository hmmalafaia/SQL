--------------------------------------------------------
--  Arquivo criado - Quinta-feira-Novembro-23-2017
--	Henrique Malafaia
--  Retornar soma dos digitos de um numero
--  Exemplo: 2345 -> 14 (2 + 3 + 4 + 5)
--  Exemplo: 7777 -> 28 (7 + 7 + 7 + 7)
--  Exemplo:   29 -> 11 (2 + 9)
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function SOMA_DIGITO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION SOMA_DIGITO (
    NUMERO IN NUMBER)
  RETURN NUMBER
IS
  soma             INT;
  nume             INT;
BEGIN
  soma      := 0;
  nume      := NUMERO;
  WHILE nume > 0
  LOOP
    soma := soma       + (MOD(nume,10));
    nume := TRUNC(nume / 10);
  END LOOP;
RETURN(soma);
END SOMA_DIGITO;

/
