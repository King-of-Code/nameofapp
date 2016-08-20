var refreshRating = function() {
	$('.rating').raty( { path: '/images', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/images',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
};

$(document).on('turbolinks:load', function() {
	refreshRating();
	
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