select  
Q.DECRICAO_QUESTIONARIO,
apex_item.checkbox(1, 1 || ':' || Q.ID_QUESTIONARIO, '') AS Muito_Ruim,
apex_item.checkbox(1, 2 || ':' || Q.ID_QUESTIONARIO, '') AS Ruim,
apex_item.checkbox(1, 3 || ':' || Q.ID_QUESTIONARIO, '') AS Regular,
apex_item.checkbox(1, 4 || ':' || Q.ID_QUESTIONARIO, '') AS Bom,
apex_item.checkbox(1, 5 || ':' || Q.ID_QUESTIONARIO, '') AS Muinto_Bom
from LIST_GRUPO_QUESTAO GQ
INNER JOIN LIST_QUESTIONARIO Q ON Q.FK_GRUPO_QUESTAO_ID = GQ.ID_QUESTAO
WHERE GQ.ID_QUESTAO = 1

select  
Q.DECRICAO_QUESTIONARIO,
apex_item.checkbox(2, 1 || ':' || Q.ID_QUESTIONARIO, '') AS Muito_Ruim,
apex_item.checkbox(2, 2 || ':' || Q.ID_QUESTIONARIO, '') AS Ruim,
apex_item.checkbox(2, 3 || ':' || Q.ID_QUESTIONARIO, '') AS Regular,
apex_item.checkbox(2, 4 || ':' || Q.ID_QUESTIONARIO, '') AS Bom,
apex_item.checkbox(2, 5 || ':' || Q.ID_QUESTIONARIO, '') AS Muinto_Bom
from LIST_GRUPO_QUESTAO GQ
INNER JOIN LIST_QUESTIONARIO Q ON Q.FK_GRUPO_QUESTAO_ID = GQ.ID_QUESTAO
WHERE GQ.ID_QUESTAO = 2

----------------------------------------------------------------------------

UPDATE LIST_RESPOSTA_GESTOR
    SET ATIVE = 0
    WHERE FK_GESTOR_ID = :P17_NOME_E_LOJA
    AND ATIVE = 1;

BEGIN
    -- PEGAR O VALOR DO CHECKBOX
    FOR i in 1..APEX_APPLICATION.G_F01.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F01(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                TO_NUMBER(l_vc_arr2(2)),
                TO_NUMBER(l_vc_arr2(1)),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;



    FOR i in 1..APEX_APPLICATION.G_F02.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F02(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                l_vc_arr2(2),
                l_vc_arr2(1),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;




    FOR i in 1..APEX_APPLICATION.G_F03.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F03(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                l_vc_arr2(2),
                l_vc_arr2(1),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;
    
    
        
        FOR i in 1..APEX_APPLICATION.G_F04.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F04(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                l_vc_arr2(2),
                l_vc_arr2(1),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;
    
        

        FOR i in 1..APEX_APPLICATION.G_F05.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F05(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                l_vc_arr2(2),
                l_vc_arr2(1),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;
    
   
   

    FOR i in 1..APEX_APPLICATION.G_F06.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F06(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                l_vc_arr2(2),
                l_vc_arr2(1),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;



        FOR i in 1..APEX_APPLICATION.G_F07.COUNT
    LOOP

        DECLARE
            l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
        BEGIN
            l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(APEX_APPLICATION.G_F07(i));
            
            INSERT INTO LIST_RESPOSTA_GESTOR(
                FK_QUESTIONARIO_ID,
                FK_QUESTIONARIO_RESPOSTA_ID,
                FK_GESTOR_ID,
                CRIADO_EM,
                CRIADO_POR,
                ATUALIZADO_POR,
                ATIVE,
                DATE_FINALIZA
            ) VALUES (
                l_vc_arr2(2),
                l_vc_arr2(1),
                :P17_NOME_E_LOJA,
                :P17_DATA,
                :APP_USER,
                :APP_USER,
                1,
                SYSDATE
            );
        END;
    END LOOP;

    EXCEPTION WHEN no_data_found THEN
        NULL;
END;
