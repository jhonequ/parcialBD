--------------------------------------------------------
--  File created - Wednesday-April-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_1" (a IN number,b IN number, c IN number)
RETURN VARCHAR2 IS
concatenated VARCHAR2(255);
begin
    if b>=c  then
        concatenated := a || '/' || (a*b) || '/' || 'andres';
    else
        concatenated := a || '/' || (a*b) || '/' || 'martinez';
    end if;
    return concatenated;
end;
--------------------------------------------------------
--  DDL for Function FUNCTION_MAYUSMINUS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_MAYUSMINUS" (cad IN VARCHAR2)
return VARCHAR2 IS
mayusMin  VARCHAR2(255);
begin
    declare
    cadena VARCHAR2(2000) := cad;
    begin
    for i in 1..length(cadena) loop
     if(i mod 2 = 0) then        
        mayusMin := mayusMin || upper(substr(cadena,i,1));
     else
        mayusMin := mayusMin || lower(substr(cadena,i,1));
     end if;
    end loop;
    end;

    return mayusMin;
end;
--------------------------------------------------------
--  DDL for Function FUNCTION_PALINDROMO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_PALINDROMO" (num IN number)
return VARCHAR2 IS
boolPalind  VARCHAR2(255);
begin
    declare
        n number;
        m number;
        rev number:=0;
        r number;
    begin
        n := num;
        m:=n;

        while n>0
        loop
            r:=mod(n,10);
            rev:=(rev*10)+r;
            n:=trunc(n/10);
        end loop;

        if m=rev
        then
            boolPalind := 'true'; 
        else
             boolPalind := 'false';
        end if;
    end;
    return boolPalind;
end;
