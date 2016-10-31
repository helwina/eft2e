$(function(){
    $('#header-icon').click(function(e){
        e.preventDefault();
        $('ul:first').toggleClass('menu');
    });
});