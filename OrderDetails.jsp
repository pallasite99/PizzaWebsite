<%@page import="java.util.List"%>
<%@page import="java.util.HashMap" %>

<%@page import="data.Item"%>
<%@taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Previous Order Details</title>

</head>
<style>.rbox {
  border-radius: 15px 50px 15px 50px;
  border: 2px solid #73AD21;
  padding: 20px; 
  width: 50%;
  height: 50%;
  margin-left :auto;
  margin-right :auto; 
} </style>
<body>

<main>
        
 <jsp:useBean id="qtylist" scope="page" class="data.QtyList"/>
        <%
        	qtylist.setQuantlist((List<data.Cart_Item>)request.getAttribute("itemmap")); 
        
        %>
        <jsp:useBean id="list" scope="page" class="data.PItem"/>
        <%
        	list.setPitem((List<data.Item>)request.getAttribute("items"));
                    int i = 1;
        %>
        <div class="rbox" align="center">
          <h3>Order Details</h3>
          
        <stl:forEach items="${list.getPitem()}" var="item">
           
		
     <h1>${item.getName()}</h1>
    ${item.getDesc()}
   <h2>Price:</h2>  ${item.getPrice()}
   <c:set var="keyString">${item.getId()}</c:set>
   
   <stl:forEach items="${qtylist.getQuantlist()}" var="map">
   <c:set var="mapid">${map.getPid()}</c:set>
   
    <c:if test = "${mapid == keyString}">
         <h2>Quant:</h2> ${map.getQty()}
      </c:if>
      
        
   </stl:forEach>
    
	
           
        </stl:forEach>
        </div>
        </main>

</body>
</html>