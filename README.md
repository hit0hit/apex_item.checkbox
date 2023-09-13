# Apex_item.

Bem-vindo(a) ao uso do apex_item.checkbox! Nesta introdução, vamos explorar o que é o apex_item.checkbox e como utilizá-lo em suas aplicações Oracle Application Express (APEX).<br>

O apex_item.checkbox é uma função disponível no Oracle APEX que permite criar caixas de seleção (checkboxes) dinamicamente dentro de relatórios ou formulários. Essa função é especialmente útil quando você precisa exibir uma lista de opções onde o usuário pode escolher uma ou várias alternativas.<br><br>

A sintaxe básica da função apex_item.checkbox é a seguinte:<br>
<br>
apex_item.checkbox( <br>
    p_idx         IN NUMBER,<br>
    p_value       IN VARCHAR2 DEFAULT NULL,<br>
    p_attributes  IN VARCHAR2 DEFAULT NULL,<br>
    p_checked     IN VARCHAR2 DEFAULT NULL<br>
) RETURN VARCHAR2;<br>

Aqui estão os principais parâmetros:<br>
<br>
p_idx: Obrigatório. É o índice do elemento. Cada checkbox deve ter um índice exclusivo para que os valores selecionados sejam corretamente identificados no lado do servidor.
<br>
p_value: Opcional. É o valor associado à caixa de seleção. Quando o usuário seleciona a caixa, esse valor será enviado ao servidor.
<br>
p_attributes: Opcional. Permite definir atributos HTML adicionais para personalizar a aparência e comportamento do checkbox.
<br>
p_checked: Opcional. Permite definir o estado inicial da caixa de seleção. Use "CHECKED" para marcar a caixa por padrão.
<br>
Para utilizá-lo, primeiro, você precisa criar um relatório ou formulário em uma página APEX e, em seguida, você pode adicionar a função apex_item.checkbox dentro do SQL ou de algum ponto dinâmico, como no cabeçalho ou no rodapé.<br><br>

Aqui está um exemplo simples de como criar uma coluna de checkbox em um relatório usando a função apex_item.checkbox:<br>

<br>
SELECT<br>
    apex_item.checkbox(1) AS select_box,<br>
    column1,<br>
    column2<br>
FROM<br>
    your_table;<br>


Neste exemplo, criamos uma coluna chamada "select_box" que conterá os checkboxes. O índice para cada checkbox é definido como 1.<br>

Lembre-se de que, ao utilizar checkboxes em formulários, você precisará processar os valores selecionados no lado do servidor para realizar as ações apropriadas.<br>

Em resumo, o apex_item.checkbox é uma poderosa função do Oracle APEX que permite criar dinamicamente checkboxes em relatórios e formulários. Utilize-a para oferecer aos seus usuários uma experiência de interação mais completa e personalizada em suas aplicações APEX.<br>
