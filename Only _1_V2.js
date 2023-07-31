<input type="checkbox" id="P6_CASE_0" name="P6_CASE" data-display="NÃO ESPECIFICADO" value="6" checked="checked"></input>

/////////
//page load
//click
const checkboxes = document.querySelectorAll('input[name="P6_CASE"]');
const naoEspecificadoCheckbox = document.getElementById('P6_CASE_0');

checkboxes.forEach((checkbox) => {
  checkbox.addEventListener('click', (event) => {
    if (event.target.checked) {
      checkboxes.forEach((cb) => {
        if (cb !== event.target) {
          cb.checked = false;
        }
      });
    } else {
      const isAnyCheckboxChecked = Array.from(checkboxes).some(cb => cb.checked);
      if (!isAnyCheckboxChecked) {
        naoEspecificadoCheckbox.checked = true;
      }
    }
  });
});
