$('input[type=checkbox]').on('change', (e) => {
    const el = $(e.target)
    el.parent('.t-Report-cell').siblings().each((n, e) => $(e).children('input').prop('checked', false))
})
//////////////////////////////////

 <div class="CARD_ITEM">
 <input type="SWITCH" name="f01" value="&ID_CHECKLIST_DETALHES." &ITEM_CHECKED./> <span class="ITEM"> &ITEM. </span>
 </div>
