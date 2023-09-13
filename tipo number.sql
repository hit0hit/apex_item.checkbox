apex_item.TEXTAREA(01,null, null,2 ,'class="number" placeholder="Digite sua mensagem"','NOEM',null)

$('.number').keypress(function(e) { 

 var charCode = (e.which) ? e.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;

});
