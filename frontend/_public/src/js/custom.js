$(function() {
    $(window).on("scroll", function() {
        if($(window).scrollTop() > 50) {
            $(".header-main").addClass("headactive");
        } else {
            //remove the background property so it comes transparent again (defined in your css)
           $(".header-main").removeClass("headactive");
        }
    });
    
    $(document).ready(function() {
    	$.subscribe('plugin/swEmotionLoader/onLoadEmotionFinished', function() {
    		$('.slidenav li').on('click', function() {
    			var mySwiper = document.querySelector('.swiper-container-horizontal').swiper;
    			
    			mySwiper.slideTo($(this).index() + 1);
    		});
    	});
    	
    	// Mobile subcategories
    	if ($(window).width() < 1024) {
    		$('.listing--categories').slideUp(0);
    		
    		$('.listing--categories').css('opacity', '1');
    		
    		$('.listing--categories').addClass('is--collapsed');
    	}
    	
    	$('.opener').on('click', function(e) {
    		e.preventDefault();
    		
    		if ($('.listing--categories').hasClass('is--collapsed')) {
    			$('.listing--categories').slideDown();
    			
    			$('.listing--categories').removeClass('is--collapsed');
    			
    			$('.opener i').attr('class', 'icon--arrow-up');
    		} else {
    			$('.listing--categories').slideUp();
    			
    			$('.listing--categories').addClass('is--collapsed');
    			
    			$('.opener i').attr('class', 'icon--arrow-down');
    		}
    	});
    	
    	// AOS
    	$.subscribe('plugin/swEmotionLoader/onLoadEmotionFinished', function () {
    		AOS.init({duration:1200,});
    	});
    	
    	// Contact form
    	$.subscribe('plugin/swEmotionLoader/onLoadEmotionFinished', function() {
    		$('.forms--inner-form > div').slice(0, 8).wrapAll('<div id="allgemein"></div>');
    		
    		$('.forms--inner-form > div').slice(1, 12).wrapAll('<div id="cateringAnfrage"></div>');
    		
    		$('.forms--inner-form > div').slice(2, 10).wrapAll('<div id="betriebsgastronomie"></div>');
    		
    		$('.forms--inner-form > div').slice(3, 6).wrapAll('<div id="franchise"></div>');
    		
    		$('.forms--inner-form > div').slice(4, 5).wrapAll('<div id="sonstiges"></div>');
    		
    		$("#art").on("change", function() {
        		$("#cateringAnfrage").css("display", "none");
        		
        		$("#betriebsgastronomie").css("display", "none");
        		
        		$("#franchise").css("display", "none");
        		
        		$("#sonstiges").css("display", "none");
        		
        		if (this.value == "Catering Anfrage") {
        			$("#cateringAnfrage").css("display", "block");
        		}
        		
        		if (this.value == "Betriebsgastronomie") {
        			$("#betriebsgastronomie").css("display", "block");
        		}
        		
        		if (this.value == "Franchise") {
        			$("#franchise").css("display", "block");
        		}
        		
        		if (this.value == "Sonstiges") {
        			$("#sonstiges").css("display", "block");
        		}
        	});
    	});
    	
    	// Tooltip
    	$.subscribe('plugin/swEmotionLoader/onLoadEmotionFinished', function () {
    		$('.tooltip img').on('touchstart', function(e) {
        		e.preventDefault();
        		/*
        		if ($(this).parent().find('span').css('display') == 'none') {
        			$(this).parent().find('span').css('display', 'block');
        		} else {
        			$(this).parent().find('span').css('display', 'none');
        		}*/
        	});
    	});
    	
    	// Login mobile
    	$('#new-customer-action').trigger('click');
    	
    	$('#new-customer-action').trigger('click');
    });
});
