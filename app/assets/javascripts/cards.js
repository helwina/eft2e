$(function () {
    var filterList = {
        init: function () {
            // Plugin Mixitup, qui permet de filtrer les vignettes par catégorie
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