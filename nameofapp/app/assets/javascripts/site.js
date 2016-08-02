$(document).on('ready page:load', function(){
	console.log( "document loaded" );
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
   });

	$('#wrapper').tubular({
		videoId: 'igSkVuxMRsw'

	}); // where idOfYourVideo is the YouTube ID. });

	$('.img-zoom').elevateZoom({
		scrollZoom : true,
		zoomWindowFadeIn: 500,
		zoomWindowFadeOut: 500,
		lensFadeIn: 500,
		lensFadeOut: 500
	});

});