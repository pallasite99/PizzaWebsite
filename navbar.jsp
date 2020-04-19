<%@ taglib prefix="stl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="navbar.css">
<link rel="stylesheet" href="style.css">

<style type="text/css">
.modal {
  z-index: 99;
}
</style>

<script>
		function validateSUForm(email,pass,rpass){
			/*Never write regex in single or double quotes. You are checking a pattern*/
			var check_regex=/^([a-zA-Z0-9.-_])+@(([a-zA-Z0-9-])+\.){1,2}([a-zA-Z]){2,4}$/;
			
			/*alert('Password is:'+pass.value.length);*/
			if(pass.value==null || pass.value==""|| rpass.value==null || rpass.value==""){
				alert('Password field(s) must not be empty');
				document.sform.psw.focus();
				document.sform.pswrep.focus();
				<!-- document.write('Password fields:invalid'); -->
				return false;
			}else if(pass.value.length < 8){
				alert('Password length is too short! Please try again');
				document.sform.psw.focus();
				document.sform.pswrep.focus();
				<!--document.write('\nPassword:valid')-->;
				<!--document.write('\nRepeat Password:valid')-->;
				return false;
			}
			if(pass.value == rpass.value){
				<!--document.write('\nPassword-match:true')-->;
			}else{
				alert('Password(s) do not match!');
				<!--document.write('\nPassword-match:false')-->;
				document.sform.psw.focus();
				document.sform.pswrep.focus();
				return false;
			}
			if(email.value.match(check_regex)){
				//document.sform.email.focus();
				<!--document.write('\nEmail:valid')-->;
				return true;
			}else{
				alert('\nInvalid email format entered!');
				document.sform.email.focus();
				<!--document.write('\nEmail:invalid')-->;
				return false;
			}
		}
</script>
<script>
			//For login modal
			// Get the modal
			var modal = document.getElementById('id01');

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
		<script>
			//For sign up modal
			// Get the modal
			var modal = document.getElementById('id02');

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
		<script>
			//Top button
			var mybutton = document.getElementById("TopBtn");
			
			// When the user scrolls down 20px from the top of the document, show the button
			window.onscroll = function() {scrollFunction()};
			
			function scrollFunction() {
			  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
				mybutton.style.display = "block";
			  } else {
				mybutton.style.display = "none";
			  }
			}
			
			// When the user clicks on the button, scroll to the top of the document
			function topFunction() {
			  document.body.scrollTop = 0;
			  document.documentElement.scrollTop = 0;
			}
		</script>
</head>
<body>

<div class="navbar">
  <div style="float:right;" class="dropdown">
    <stl:if test="${user != null}">
      <button class="dropbtn">${user.getEmail()}
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content" style="right: 0px;">
        <a href="Orders">View Orders</a>
	    <a href="#changeaddr">Change Address</a>
        <a href="#logout">Logout</a>
      </div>
    </stl:if>
    <stl:if test="${user == null}">
      <a href="#" id="loginBtn" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</a>
    </stl:if>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Menu
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Menu">All</a>
	  <a href="Menu#specials">Our specials</a>
      <a href="Menu#veg">Veg</a>
      <a href="Menu#nonveg">Non-veg</a>
    </div>
  </div>
  <a href="#offers">Offers</a>
  <span style="position: fixed; left:50%;">
  <!-- img id="logo" src="img/logo.png" width="auto" height="45px" -->
  <a href="index.html" style="float: center;">Pizzeriaa</a>
  </span>>
</div>

<button onclick="topFunction()" id="TopBtn" title="Scroll top">Top</button>
		
		<div id="top">

			<div id="id01" class="modal">
  
				<form class="modal-content animate" action="LoginServlet" method="post">
				<div class="imgcontainer">
					<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
					<img id="img2" src="img/avatar.jfif" alt="Avatar" class="avatar">
				</div>

				<div class="container">
					<label for="email"><b>Email</b></label>
					<input type="text" placeholder="Enter First Name" name="email" required>

					<label for="psw"><b>Password</b></label>
					<input type="password" placeholder="Enter Password" name="psw" required>
			
					<label>
						<input type="checkbox" checked="checked" name="remember"> Remember me
					</label>
					<input type="hidden" name="prevPage" value="${pageContext.request.servletPath}">
					<button type="submit">Login</button>
					<button type="reset" onclick="document.getElementsByName('email').value='';document.getElementsByName('psw').value='';" class="resetbtn">Reset</button>
				</div>

				<div class="container" style="background-color:#f1f1f1">
				  <section class="tooltip">
				  	  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
				  	  <span class="tooltiptext">Go back</span>
				  </section>
				  <div class="tooltip">
					  <button type="button" onclick="document.getElementById('id02').style.display='block';document.getElementById('id01').style.display='none'" class="signupbtn">Sign up?</button>
					  <span class="tooltiptext">New user</span>
				  </div>
				</div>
				</form>
			</div>
			
			
			<!-- button id="signbtn" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Sign Up</button-->

			<div id="id02" class="modal">
			  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
			  <form name="sform" class="modal-content" method="POST" action="RegisterServlet" onsubmit="return validateSUForm(document.sform.email,document.sform.psw,document.sform.pswrep)">
				<div class="container">
				  <h1>Sign Up</h1>
				  <p>Please fill in this form to create an account.</p>
				  <hr>
				  <label for="email"><b>Email</b></label>
				  <input type="text" placeholder="Enter Email" name="email" required>
				  
				  <label for="fname"><b>First name</b></label>
				  <input type="text" placeholder="Enter First Name" name="fname" required>
				  
				  <label for="lname"><b>Last name</b></label>
				  <input type="text" placeholder="Enter Last Name" name="lname" required>
				  
				  <label for="phnum"><b>Phone number(10 digit)</b></label>
				  <input type="tel" maxlength="10" pattern="[0-9]{10}" placeholder="Enter Phone number" name="phnum" required>

				  <label for="psw"><b>Password</b></label>
				  <input type="password" placeholder="Enter Password" name="psw" required>

				  <label for="psw-repeat"><b>Repeat Password</b></label>
				  <input type="password" placeholder="Repeat Password" name="pswrep" required>
				  
				  <label>
					<input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
				  </label>
				  <section>
				  		<button type="reset" id="resetSign" value="reset">Reset fields</button>
				  </section>
				  <p>By creating an account you agree to our <a href="termscon.html" style="color:dodgerblue">Terms and Conditions</a>.</p>

				  <div class="clearfix">
				  	<section class="tooltip">
				  		<button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
				  		<span class="tooltiptext">Go back?</span>
				  	</section>
				  	<section class="tooltip">
						<button type="submit" class="signupbtn">Sign Up</button>
						<span class="tooltiptext">Proceed</span>
					</section>
					<section class="tooltip">
						<input type="hidden" name="prevPage" value="${pageContext.request.servletPath}">
						<button type="button" class="userbtn" onclick="document.getElementById('id02').style.display='none';document.getElementById('id01').style.display='block'">Already a user?</button>
						<span class="tooltiptext">For existing user</span>
				  	</section>
				  </div>
				</div>
			  </form>
			</div>
		</div>
	

</body>
</html>