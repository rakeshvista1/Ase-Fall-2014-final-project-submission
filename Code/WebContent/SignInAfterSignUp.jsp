<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="scripts/jquery-2.1.1.js"></script>
<title>Sign up Page</title>

<style>
body {
	background-color: silver;
}

div#signUpForm {
	height: 500px;
	width: 400px;
	background-color: white;
	margin-top: 90px;
	margin-left: 475px;
	border-radius: 20px;
}
</style>

<script>
	function validateInputDetails() {

		var userEmail = document.getElementById("userEmail").value.trim();
		var passWord = document.getElementById("passWord").value.trim();

		if (userEmail == "" || passWord == "") {
			alert("Input fields cannot be empty");
			return false;
		}
		return true;
	}
</script>
</head>

<body>

	<%
	
	
		String errorMessage; 

		if (session.getAttribute("errorMessage")==null) {
			errorMessage = " ";
		}else{
			errorMessage = (String) session.getAttribute("errorMessage");
		}
	%>

	<div id="signUpForm">
		<p
			style="color: red; font-weight: bold; text-align: center; font-size: 25px; padding-top: 15px">
			<%=errorMessage%>
		</p>

		<%
			session.removeAttribute("errorMessage");
		%>
		<form action="loginValidatePath" method="post"
			onsubmit="return validateInputDetails()">
			<p style="margin-left: 103px; font-size: 21px; padding-top: 10px">
				<b>Enter Login Details</b>
			</p>

			<p style="margin-left: 33px;">EmailId</p>
			<input type="text" id="userEmail" name="userEmail"
				style="margin-left: 33px; padding: 15px; font-size: 20px; border-radius: 10px; width: 300px;">

			<p style="margin-left: 33px;">Password</p>
			<input type="password" id="passWord" name="passWord"
				style="margin-left: 33px; padding: 15px; font-size: 20px; border-radius: 10px; width: 300px">

			<input type="submit"
				style="margin-left: 50px; margin-top: 30px; padding: 15px; font-size: 20px; border-radius: 10px; width: 300px; font-weight: bold;"
				value="Login">
		</form>



	</div>
</body>
</html>