$('input[type=checkbox]').on('change', (e) => {
    const el = $(e.target)
    el.parent('.t-Report-cell').siblings().each((n, e) => $(e).children('input').prop('checked', false))
})
