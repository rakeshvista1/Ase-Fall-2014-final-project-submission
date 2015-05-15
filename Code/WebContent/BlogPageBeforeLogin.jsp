<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog Page</title>
<style>
body {
	margin-left: 75px;
	margin-right: 75px;
	background: linear-gradient(#25303c, #728eaa);
	/* Standard syntax (must be last) */
}

div#mainBanner {
	height: 130px;
	background: linear-gradient(#47D147, #398739);
	position: relative;
}

ul#menu li {
	display: inline;
}

ul#menu li a {
	background-color: white;
	color: black;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 4px;
}

ul#menu li a:FOCUS {
	background-color: orange
}

ul#menu li a:HOVER {
	background-color: orange
}

form#userForm button#logoutButton {
	position: absolute;
	margin-left: 1115px;
	border-radius: 4px;
	margin-top: 3px;
	padding: 10px 10px;
	width: 100px;
}

form#userForm button#userNameButton {
	position: absolute;
	margin-left: 960px;
	border-radius: 4px;
	margin-top: 3px;
	padding: 10px 10px;
	width: 150px;
}

form#userForm button:HOVER {
	background-color: teal;
}
</style>
</head>

<body>
	<div id="mainBanner">

		<h1
			style="float: left; margin-left: 50px; margin-top: 30px; color: yellow; font-size: 40px; font-family: cursive; font-style: italic;">
			Donate Food, Save lives!!</h1>

		<form>
			<div style="float: right; margin-top: 80px; margin-right: 75px">
				<ul id="menu">
					<li><a href="/com.AsePhase1/HomePage.html">Home</a></li>
					<li><a href="/com.AsePhase1/SignInAfterSignUp.jsp">Posts</a></li>
					<li><a href="/com.AsePhase1/SignInAfterSignUp.jsp">Donate</a></li>
					<li><a href="/com.AsePhase1/BlogPageBeforeLogin.jsp">Blog</a></li>
					<li><a href="/com.AsePhase1/AboutUsBeforeLogin.jsp">About
							Us</a></li>
				</ul>
			</div>
		</form>
	</div>
</body>
</html>