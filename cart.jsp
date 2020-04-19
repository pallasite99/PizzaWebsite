<%@ page import="data.Pizza"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="cart.css"/>

<script type="text/javascript">
function checkLogin() {
	var user = ${user}
	console.log('user'+user);
	if(user == null) {
		alert("please Login to continue");
		document.getElementById('id01').style.display='block';
		return false;
	} else {
		return true;
	}
	
}
</script>

</head>
<body>
	<div class="cart">
		<div class="cart-items">
		<stl:forEach items="${cart.getCartItems()}" var="item">
			<article class="cart-item">
				<section class="cart-item-name">${item.getPizza().getName()}</section>
				<section class="cart-item-qty">${item.getQty()}</section>
				<section class="cart-item-price">${item.getPizza().getPrice()}</section>
				<section class="cart-item-amt">${item.getQty() * item.getPizza().getPrice()}</section>
			</article>	
		</stl:forEach>
		</div>
        <form action="Menu" method="post">
        	<input type="hidden" name="action" value="clear">
        	<input id="clear-btn" type="submit" value="Clear Cart"/>
        </form>
        
        <form action="Checkout" method="post" onsubmit="return checkLogin()">
        	<input type="hidden" name="action" value="check-address">
        	<input id="clear-btn" type="submit" value="Continue to Checkout"/>
        </form>
	</div>
</body>
</html>