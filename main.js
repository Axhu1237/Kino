$(document).ready(function () {

    $('.myLinkModal').click(function (event) {
        event.preventDefault();
        $('#myOverlay').fadeIn(297, function () {
            $('#myModal')
                .css('display', 'block')
                .animate({
                    opacity: 1
                }, 198);
        });
    });

    $('#myModal__close, #myOverlay').click(function () {
        $('#myModal').animate({
            opacity: 0
        }, 198, function () {
            $(this).css('display', 'none');
            $('#myOverlay').fadeOut(297);
        });
    });

});



$(function () {
    if ($(window).width() > 991) {
        (function ($) {
            $(".full").mCustomScrollbar({
                axis: "y",
                scrollButtons: {
                    enable: true,
                    scrollType: "stepped"
                },
                keyboard: {
                    scrollType: "string",
                    scrollAmount: 20
                },
                mouseWheel: {
                    scrollAmount: 350,

                    normalizeDelta: false
                },
                theme: "rounded-light",
                autoExpandScrollbar: true,
                advanced: {
                    autoExpandHorizontalScroll: true
                },
            });
        })(jQuery);
    }
});




$(function () {
    

    
    
    $('.search-button').click(function () {
        $(this).toggleClass('active');
        $('.search-box').toggleClass('active');
    });



    $('.filter-button').click(function () {
        $(this).toggleClass('active');
        $('.filter_box').toggleClass('active');
    });



});


$(document).ready(function () {

var swiper = new Swiper('.slider_main', {
    pagination: {
        el: '.swiper-pagination',
        type: 'progressbar',
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});

var swiper = new Swiper('.slider_content', {
    slidesPerView: 'auto',
    spaceBetween: 20,
    pagination: {
        el: '.swiper-pagination',
        type: 'progressbar',
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});
    $('body').on('click', '#nav-load a', function () {
        var urlNext = $(this).attr('href');
        var scrollNext = $(this).offset().top - 200;
        if (urlNext !== undefined) {
            $.ajax({
                url: urlNext,
                beforeSend: function () {
                    ShowLoading('');
                },
                success: function (data) {
                    $('.navs').remove();
                    $('#dle-content').append($('#dle-content', data).html());
                    $('#dle-content').after($('.navs'));
                    window.history.pushState("", "", urlNext);
                    $('html, body').animate({
                        scrollTop: scrollNext
                    }, 800);
                    HideLoading('');
                },
                error: function () {
                    HideLoading('');
                    alert('что-то пошло не так');
                }
            });
        };
        return false;
    });

});