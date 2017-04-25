$(function () {
    var filterList = {
        init: function () {
            $('#articleliste').mixitup({
                targetSelector: '.carte',
                filterSelector: '.filter',
                effects: ['fade'],
                easing: 'snap'
            });
        }
    };
    filterList.init();
});