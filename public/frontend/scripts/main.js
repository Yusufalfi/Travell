

//ketika link di clik

$('.page-scroll').on('click', function(e){

    //ambil isi link
var tujuan = $(this).attr('href');
    
    //ambil element link
var elemenTujuan = $(tujuan);
// console.log(elementLink.offset().top);

$('html, body').animate({

    scrollTop: elemenTujuan.offset().top - 30

}, 2000, 'easeInOutExpo');


e.preventDefault();

  
});





//paralax header

$(window).on('load', function() {
    $('.pKiri').addClass('pMuncul');
    $('.pKanan').addClass('pMuncul');
    $('.btn-get-started').addClass('muncul');
    
});


$(window).scroll(function() {
    var wScroll = $(this).scrollTop();

    


    $('.header img').css({
        'transform' : 'translate(0px, '+ wScroll/4 +'%)'

    });

    $('.header h1').css({
        'transform' : 'translate(0px, '+ wScroll/2 +'%)'

    });

   // card-travel

    if( wScroll > $ ('.section-popular-content .section-popular-travel ').offset().top -350) {
         // //1507.272705078125 700.818115234375
        //  console.log('ok');

        $('.section-popular-content .section-popular-travel .card-travel').each(function(i) {
            setTimeout(function() {
                $('.section-popular-content .section-popular-travel .card-travel').eq(i).addClass('muncul');
            }, 500 * (i+1));
        });
        // 

    }


});