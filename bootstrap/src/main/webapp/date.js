
///**
// * 
// */
// $( function() {
//	$('#dataEmissione').datepicker({minDate:0});
// });
 jQuery(document).ready(function(){	
	 $('#dataEmissione').datepicker({
		 minDate: 0, 
		 maxDate: "+2M +10D",
		 dateFormat: 'dd-mm-yy'
			 });
 });