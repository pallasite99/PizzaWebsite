<%@page import="java.util.List"%>
<%@page import="data.Order"%>
<%@taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Previous Orders</title>
<link rel="stylesheet" type="text/css" href="card.css"/>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/jquery/jquery-3.4.1-min.js"></script>
        <script type="text/javascript" src="menu.js"></script>
        
</head>
<body><h1>

		<jsp:include page="navbar.jsp"></jsp:include>
<p align="center">Previous Orders</p></h1>

<main>
        <jsp:useBean id="list" scope="page" class="data.POrder"/>
        <%
        	list.setPorder((List<data.Order>)request.getAttribute("perv_order"));
                    int i = 1;
        %>
        <stl:if test="${list.getPorder().size() == 0}"><h4 align="center">No orders yet</h4></stl:if>
        <stl:forEach items="${list.getPorder()}" var="order">
            <article class="card">
		
          <h3>${order.getCid()}</h3>
       
         <h2>Order delivery date:</h2>    <h3>${order.getDate()}</h3>
         
		 <form method="post" action="ReceiptServlet">
              <input type="hidden" id="Cid" name="Cid" value="${order.getCid()}"> 
              <button type="submit">Get Details
         </form>

		
            </article>
        </stl:forEach>
        </main>
</body>
</html>