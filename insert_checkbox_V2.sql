apex_item.checkbox(3, 1 || ':' || Q.ID_QUESTIONARIO, '')

----------------------------------------------------------------
BEGIN
    -- PEGAR O VALOR DO CHECKBOX
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

    EXCEPTION WHEN no_data_found THEN
        NULL;
END;
