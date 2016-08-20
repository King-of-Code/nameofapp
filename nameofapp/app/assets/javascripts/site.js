$(document).on('turbolinks:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
    	readOnly: true,
    	score: function() {
      		return $(this).attr('data-score');

    	}
	});	
};

	$('#wrapper').tubular({
		videoId: 'hdj0sPvHI0Y'

	}); // where idOfYourVideo is the YouTube ID. });

	$('.img-zoom').elevateZoom({
		scrollZoom : true,
		zoomWindowFadeIn: 500,
		zoomWindowFadeOut: 500,
		lensFadeIn: 500,
		lensFadeOut: 500
	});

});