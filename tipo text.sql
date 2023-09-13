 htp.p(apex_item.text(
    p_idx           => 1,          -- Índice do item (único na página)
    p_value         => null,       -- Valor inicial (deixe como null para um campo em branco)
    p_max_length    => 50,         -- Comprimento máximo do texto
    p_attributes    => 'class="my-input-class"', -- Atributos HTML adicionais
    p_item_id       => 'nome',     -- ID do elemento HTML gerado
    p_item_name     => 'nome'      -- Nome do elemento HTML gerado
  ));
