$(document).ready(function () {
	var mySwiper = new Swiper ('#home.swiper-container', {
		loop: true,
		navigation: {
	    	nextEl: '.swiper-next',
			prevEl: '.swiper-prev',
	    },
	});
});

$(document).ready(function () {
	var mySwiper = new Swiper ('#quemsomos .swiper-container', {
		loop: true,
		navigation: {
	    	nextEl: '.swiper-next',
			prevEl: '.swiper-prev',
	    },
	});
});

//Scroll para ID's
$(function(){
	$('.scroll').click(function(e){
		$.scrollTo(this.hash || 0, 500);
		e.preventDefault();
		if ($('#navsite ul').hasClass('mobile-menu')){
			$('#navsite ul').removeClass('mobile-menu');
		}
	});
});

$(function(){
	//Menu
	$('#togglemenu').on('click', function(){
		var $nav = $('#navsite ul');
    	$nav.toggleClass('mobile-menu');
	});
});  

$(".modal").iziModal();

var SPMaskBehavior = function (val) {
	return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
},
spOptions = {
	onKeyPress: function(val, e, field, options) {
		field.mask(SPMaskBehavior.apply({}, arguments), options);
	}
};

$('input.tel').mask(SPMaskBehavior, spOptions);
//$('input.cpf').mask('999.999.999-99');
//$('input.cnpj').mask('99.999.999/9999-99');
//$('input.cep').mask('99999-999');
