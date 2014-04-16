$(document).ready(function(){
	$("#id_other_cat").hide();
	$("#tooltipinfo").tooltip();

	var chatcount = 0;

	$(".selectList").click(function(){
		if($(".selectList").is(':checked'))
			chatcount++;
		else
			chatcount--;
	});

	$("#id_other").click(function(){
		if($(this).is(':checked')){
			$("#id_other_cat").prop('disabled',false).show(300);
		}
		else
			$("#id_other_cat").prop('disabled',true).hide();
	});

	$("#TC").click(function(){
		$("#btn_submit").prop('disabled', true);

		if($("#TC").is(':checked'))
			$("#btn_submit").prop('disabled', false);
	});

	$("#frm_reg").submit(function(event){
		if(chatcount <= 0){
			$(".pick > .frmreg").css('color','red');
			event.preventDefault();
		}//
	});

	function setSubmitBut(){
		if( ($("#TC").is(':checked')) && (chatListCount > 0) && ($("#username").val().length > 0) )
			$("#btn_submit").prop('disabled', false);
		else
			$("#btn_submit").prop('disabled', true);
	}//setSubmitBut
})