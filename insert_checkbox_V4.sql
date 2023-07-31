apex_item.hidden(p_idx   => 03, p_value => ID_MATRICULA) AS ID
<script>
function handleCheckbox(checkbox) {
  var hiddenField = checkbox.previousElementSibling;
  
  if (checkbox.checked) {
    hiddenField.value = "1"; // Checkbox marcado, valor é 1
  } else {
    hiddenField.value = "0"; // Checkbox desmarcado, valor é 0
  }
}
</script>

<input type="hidden" name="f02" value="0">
<input type="checkbox" class="interactive-report-checkbox" value="1" onchange="handleCheckbox(this)">
<!-- Adicione a classe CSS "interactive-report-checkbox" a todos os checkboxes do relatório interativo -->
---------------------------------------------------

BEGIN
  FOR I IN 1..:P2_TOTAL LOOP
      INSERT INTO GC_CHAMADA(
        DATA,
        CHAMADA,
        FK_MATRICULA_ID
      ) VALUES (
        sysdate,
        APEX_APPLICATION.G_F02(i),
        APEX_APPLICATION.G_F03(i)
      );
  END LOOP; 
END;
