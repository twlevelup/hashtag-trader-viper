$(document).ready(function(){
	$(".alert").hide().fadeIn(3000).show();
	$(".displayNews").hide().fadeIn(3000).show();
	$(".navbar-fixed-top").hide().slideDown(1500).show();

	$(function() {
		$('.chart').easyPieChart({
			easing: 'easeOutBounce',
			scaleLength: '1',
			size: 70,
			barColor: 'blue',
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
		var chart = window.chart = $('.chart').data('easyPieChart');
		$('.js_update').on('click', function() {
			chart.update(Math.random()*200-100);
		});
	});
});