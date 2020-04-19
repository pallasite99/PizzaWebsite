<%@page import="data.Address"%>
<%@ taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Checkout page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript">
function Enter_addr() { 
	console.log('Checkbox clicked');
	console.log(document.getElementById('chk').checked);
	if(document.getElementById('chk').checked == false)	{
    	document.getElementById('adr').readOnly = false;
    	document.getElementById('city').readOnly = false;
    	document.getElementById('state').readOnly = false;
    	document.getElementById('zip').readOnly = false;
	} else {
    	document.getElementById('adr').readOnly = true;
    	document.getElementById('city').readOnly = true;
    	document.getElementById('state').readOnly = true;
    	document.getElementById('zip').readOnly = true;
    	
    	document.getElementById('adr').value = '${address.getAddr()}';
    	document.getElementById('city').value = '${address.getCity()}';
    	document.getElementById('state').value = '${address.getState()}';
    	document.getElementById('zip').value = '${address.getZip()}';
	}
}
</script>
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text],input[type=password] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=text]:read-only {
  pointer-events: none;
  cursor: not-allowed;
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
  background: #bebebe;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color:  #ff9900;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

span.quant{
 margin-left: 10px;
 text-align:center;
 color:grey;
}


@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>

<jsp:useBean id="address" class="data.Address" scope="page"></jsp:useBean>

<%
address = (Address) request.getAttribute("address");
System.out.println("address : "+address.getAddr());
%>

<jsp:include page="navbar.jsp"></jsp:include>


<article style="margin-top: 40px;">
  <header>
    <h2>You are just a step away <wbr>from delicious pizza!</h2>
    <p>Please enter details</p>
  </header>
 
</article>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form method="post" action="CartController" name="form1">
      
        <div class="row">
          <div class="col-25">
            <h3>Billing Address</h3>
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="addr" placeholder="Street" value="${address.getAddr()}" readonly required>
            <label for="city"><i class="fa fa-institution" ></i> City</label>
            <input type="text" id="city" name="city" placeholder="City" value="${address.getCity()}" readonly required>

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="State" value="${address.getState()}" readonly required> 
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" pattern="[0-9]{6}" id="zip" name="zip" placeholder="100001" value="${address.getZip()}" readonly required>
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>

            <label for="fname"><mark>Accepted Cards</mark></label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Name of Card Holder">
            <label for="ccnum">Credit card number</label>
            <input type="text" pattern="[0-9]{16}" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="Month">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" pattern="[0-9]{4}" id="expyear" name="expyear" placeholder="2020">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="password" pattern="[0-9]{3}" id="cvv" name="cvv" placeholder="***" required>
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" id="chk" name="sameadr" value="yes" onclick="Enter_addr()"> Shipping address same as billing
        </label>
           <input type="hidden" name="action" value="save"> 
          <input type="submit" value="Proceed to Pay" class="btn"/>
      </form>
    </div>
  </div>
   <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>${cart.size()}</b></span></h4>
      <stl:forEach items="${cart.getCartItems()}" var="item">
      <p><a href="#">${item.getPizza().getName()}</a> <span class="quant">&times ${item.getQty()}</span><span class="price">&#8377 ${item.getPizza().getPrice()}</span></p>
      </stl:forEach>
      <hr>
      <p>Total <span class="price" style="color:black"><b>&#8377 ${cart.getAmount()}</b></span></p>
    </div>
  </div>
  
</div>

 <footer>
  <p>Posted by: Admin@Pizzeria</p>


<details>
  <summary>Copyright 1999-2018.</summary>
  <p> - by Pizzeria. All Rights Reserved.<sup>&reg</sup></p>
  <p>All content and graphics on this web site<wbr> are the property of<wbr> the company Pizzeria.</p>
</details>

  <p>Contact information: <a href="mailto:someone@example.com">
  someone@example.com</a>.</p>
</footer>
 
</body>
</html>