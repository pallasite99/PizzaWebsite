<%@page import="data.Menu"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="data.Pizza"%>
<%@ taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" type="text/css" href="menu.css"/>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <body>
    
		<jsp:include page="navbar.jsp"></jsp:include>
        <h2>Menu</h2>
        <main>
        
        <jsp:useBean id="cart" scope="session" class="data.Cart"/>
        
        <% int i = 0; %>
        <stl:forEach items="${menu.getPizzas()}" var="pizza">
            <article class="card">
                <section class="card-image" style="background-image: url(${pizza.getImg()});"></section>
				<section class="card-name">
                    <h3>${pizza.getName()}</h3>
				</section>
				<section class="card-details">
                    <p>${pizza.getDescription()}</p>
                    <div class="qty">
                    	<stl:if test="${!cart.contains(pizza)}">
                    		<form action="Menu" method="post">
                    		<input type="hidden" name="pid" value="<%= i %>">
                    		<input type="hidden" name="action" value="add">
                        	<input class="qty-btn" type="submit" value="Add to Cart"/>
                   			</form>
                       	</stl:if>
		
                    	<stl:if test="${cart.contains(pizza)}">
                    		<form action="Menu" method="post">
                    		<input type="hidden" name="pid" value="<%= i %>">
                    		<input type="hidden" name="action" value="add">
                        	<input class="qty-btn" type="submit" value="+"/>
                    		</form>
                        	
                        	<span class="qty-num">${cart.get(cart.indexOf(pizza)).getQty()}</span>
                        	
                    		<form action="Menu" method="post">
                    		<input type="hidden" name="pid" value="<%= i %>">
                    		<input type="hidden" name="action" value="delete">
                        	<input class="qty-btn" type="submit" value="-"/>
                        	</form>
                        </stl:if>
                    </div>
				</section>
            </article>
            <% i++; %>
        </stl:forEach>
        </main>
        <jsp:include page="cart.jsp"></jsp:include>
        </form>
    </body>
</html>
