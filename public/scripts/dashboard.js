$(document).ready(function(){
	$("#tooltipinfo").tooltip();
	
	$('#TopTrade').parent().css('background-color','white');
	$('#TopTrade').dataTable();

	$('#DownTrade').parent().css('background-color','white');
	$('#DownTrade').dataTable();

	$("#id_logout").click(function(e){
		var ans = confirm("Continue with logout?");

		if(!ans)
			e.preventDefault();
	});
});