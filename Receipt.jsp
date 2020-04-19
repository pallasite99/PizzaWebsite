<%@page import="data.Address"%>
<%@page import="data.User"%>
<%@page import="data._Order"%>
<%@page import="java.util.List"%>
<%@page import="data.Item"%>
<%@taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Receipt.css">
<title>Receipt</title>
</head>
<body>

		<jsp:include page="navbar.jsp"></jsp:include>
<main>
      

     <jsp:useBean id="order" scope="page" class="data._Order"/>
     <jsp:useBean id="address" scope="page" class="data.Address"/>
        <%
        order = (_Order) request.getAttribute("order");
        address = (Address) request.getAttribute("address");
        %>

        <div id="invoiceholder">

  <div id="headerimage"></div>
  <div id="invoice" class="effect2">
    
    <div id="invoice-top">
      <div class="logo"></div>
      <div class="info">
        <h2>Pizzeria!</h2>
        <p> <%=order.getUser().getEmail()%> </br>
            <%=order.getUser().getPhnum()%>
        </p>
      </div><!--End Info-->
      <div class="title">
        <h1>Invoice <%=order.getId()%></h1>
      </div><!--End Title-->
    </div><!--End InvoiceTop-->


    
    <div id="invoice-mid">

      <div id="project" style="margin: auto;">
        <h2>Delivering To: <%=order.getUser().getName()%></h2>
        <p><%=address.getAddr()%><p><%=address.getCity()%><p><%=address.getState()%><p><%=address.getZip()%></p>
      </div>   

    </div><!--End Invoice Mid-->
    
    <div id="invoice-bot">
      
      <div id="table">
        <table>
          <tr class="tabletitle">
            <td class="item"><h2>Pizza</h2></td>
            <td class="Qty"><h2>Qty</h2></td>
            <td class="Rate"><h2>Rate</h2></td>
            <td class="subtotal"><h2>Sub-total</h2></td>
          </tr>
          
          
          
          <stl:forEach items="<%=order.getCart().getCartItems()%>" var="item">
		  <tr class="service">
            <td class="tableitem"><p class="itemtext">${item.getPizza().getName()}</p></td>
            <td class="tableitem"><p class="itemtext">${item.getQty()}</p></td>
            <td class="tableitem"><p class="itemtext">${item.getPizza().getPrice()}</p></td>
            <td class="tableitem"><p class="itemtext">${item.getPizza().getPrice() * item.getQty()}</p></td>
            
          </tr>
           </stl:forEach>
           
            
          <tr class="tabletitle">
            <td></td>
            <td></td>
            <td class="Rate"><h2>Total</h2></td>
            <td class="payment"><h2><%=order.getCart().getAmount()%></h2></td>
          </tr>
          
        </table>
      </div><!--End Table-->
      
    
     

      
      <div id="legalcopy">
        <p class="legal"><strong>Thank you for Ordering!</strong>  
        </p>
      </div>
      
    </div><!--End InvoiceBot-->
  </div><!--End Invoice-->
</div><!-- End Invoice Holder-->
        
</main>


</body>
</html>