var refreshRating = function() {
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
};

var refreshWrapper = function(){
	$('#wrapper').tubular({
		videoId: 'hdj0sPvHI0Y'

	}); // where idOfYourVideo is the YouTube ID. });
}


$(document).on('turbolinks:load', function() {

refreshRating();

refreshWrapper();

	$('.img-zoom').elevateZoom({
		scrollZoom : true,
		zoomWindowFadeIn: 500,
		zoomWindowFadeOut: 500,
		lensFadeIn: 500,
		lensFadeOut: 500
	});

});