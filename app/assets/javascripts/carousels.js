$(function () {
    $('.carousel').carousel({ interval: 2750 });
    $('#previous').click(function() { $('.carousel').carousel('prev'); });
    $('#pause').click(function() { $('.carousel').carousel('pause'); });
    $('#play').click(function() { $('.carousel').carousel('cycle'); });
    $('#next').click(function() { $('.carousel').carousel('next'); });
});