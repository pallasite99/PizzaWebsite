<%@page import="java.util.List"%>
<%@page import="java.util.HashMap" %>

<%@page import="data.Item"%>
<%@taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Receipt.css">
<title>Receipt</title>
</head>
<body>

<main>
       

<%--float total= Float.parseFloat((request.getAttribute("total").toString())); --%>

     <jsp:useBean id="qtylist" scope="page" class="data.QtyList"/>
        <%
        	qtylist.setQuantlist((List<data.Cart_Item>)request.getAttribute("itemmap")); 
        
        %> 

        <jsp:useBean id="list" scope="page" class="data.PItem"/>
        <%
        	list.setPitem((List<data.Item>)request.getAttribute("items"));
                    int i = 1;
        %>
        <div id="invoiceholder">

  <div id="headerimage"></div>
  <div id="invoice" class="effect2">
    
    <div id="invoice-top">
      <div class="logo"></div>
      <div class="info">
        <h2>Pizzeria!</h2>
        <p> eg@gmail.com </br>
            289-335-6503
        </p>
      </div><!--End Info-->
      <div class="title">
        <h1>Invoice #1069</h1>
      </div><!--End Title-->
    </div><!--End InvoiceTop-->


    
    <div id="invoice-mid">
      
      <div class="info">
        <h2></h2>
       
      </div>

      <div id="project">
        <h2>Delivering To:</h2>
        <p>Address will be displayed here</p>
      </div>   

    </div><!--End Invoice Mid-->
    
    <div id="invoice-bot">
      
      <div id="table">
        <table>
          <tr class="tabletitle">
            <td class="item"><h2>Pizza</h2></td>
            <td class="Hours"><h2>Qty</h2></td>
            <td class="Rate"><h2>Rate</h2></td>
            <td class="subtotal"><h2>Sub-total</h2></td>
          </tr>
          
          
          
           <stl:forEach items="${list.getPitem()}" var="item">
           <tr class="service">
           <c:set var="keyString">${item.getId()}</c:set>
          
          
            <td class="tableitem"><p class="itemtext">${item.getName()}</p></td>
               
            
             <stl:forEach items="${qtylist.getQuantlist()}" var="map">
   <c:set var="mapid">${map.getPid()}</c:set>
   
    <c:if test = "${mapid == keyString}">
            <td class="tableitem"><p class="itemtext">${map.getQty()}</p></td>
            <c:set var="qty">${map.getQty()} </c:set>
      </c:if>
      </stl:forEach>
            <td class="tableitem"><p class="itemtext">${item.getPrice()}</p></td>
            <td class="tableitem"><p class="itemtext">${item.getPrice() * qty}</p></td>
            
          </tr>
           </stl:forEach>
           
            
          <tr class="tabletitle">
            <td></td>
            <td></td>
            <td class="Rate"><h2>Total</h2></td>
            <td class="payment"><h2>${cart.getAmount()}</h2></td>
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