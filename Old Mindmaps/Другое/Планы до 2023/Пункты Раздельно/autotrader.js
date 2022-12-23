
function sellEverythingIfAllGood() {
	//console.log('Checking if should sell everything');
	
	var elementsArray = $('#datatable-responsive .text-danger, #datatable-responsive .text-success')
	
	var numbersArray = $.map(elementsArray, function(val, i) { 
		var a = val;
		return parseFloat(a.innerHTML);  
	})
	
	//console.log('Numbers are: ');
	//console.log(numbersArray);
	
	var average = numbersArray.reduce((a, b) => a + b, 0) / numbersArray.length;
	
	//console.log('Average is: ');
	console.log(average);
	
	//if (average > 1) {
	//	setTimeout(() => {
	//		console.log('selecting all coins');
	//		$('#selectAllBulkSelection').click();
	//	}, 1000)
	//	
	//	setTimeout(() => { 
	//		console.log('triggering sell all selected coins');
	//		sellMultiplePos();
	//	}, 3000)
	//	
	//	setTimeout(() => { 
	//		console.log('confirming the sell');
	//		$('.swal2-buttonswrapper .btn-danger').click();
	//	}, 5000)
	//	
	//	setTimeout(() => { 
	//		console.log('unchecking all coins');
	//		$('.selectAllBulk, #selectAllBulkSelection').removeAttr('checked');
	//	}, 7000)
	//}
}

setInterval(sellEverythingIfAllGood, 300000)