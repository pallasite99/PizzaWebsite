$(document).ready(function(){
    var count = 1;
    $(".qty").each(function(k){	
	var i = k + 1;
	$("#minus"+i).click(function(){
            console.log("#minus"+i);
            var qty = parseInt($("#qty"+i).text());
            if(qty >= 1)
		$("#qty"+i).text(qty-1);
            });
        $("#plus"+i).click(function(){
            console.log("#plus"+i);
            var qty = parseInt($("#qty"+i).text());
            if(qty <= 9)
                $("#qty"+i).text(qty+1);
        });
    });
});