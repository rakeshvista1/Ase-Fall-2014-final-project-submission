<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.AsePhase2.View.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donate Page</title>
<style>
html {
	height: 100%;
}

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

form.userDetailsForm button#logoutButton {
	position: absolute;
	margin-left: 1100px;
	border-radius: 4px;
	margin-top: 3px;
	padding: 10px 10px;
	width: 100px;
}

form.userDetailsForm button#userNameButton {
	position: absolute;
	margin-left: 940px;
	border-radius: 4px;
	margin-top: 3px;
	padding: 10px 10px;
	width: 150px;
}

form.userDetailsForm button:HOVER {
	background-color: teal;
}

div#donateFoodDiv {
	position: absolute;
	margin-left: 250px;
	margin-top: 10px;
	width: 320px;
	border-radius: 8px;
}

div#donateFoodDiv img:HOVER {
	opacity: 0.6;
}

div#donateFundDiv {
	position: absolute;
	margin-left: 650px;
	margin-top: 10px;
	width: 320px;
	border-radius: 8px;
}

div#donateFundDiv img:HOVER {
	opacity: 0.6;
}

.foodDetailsInputForm {
	width: 300px; <!--
	padding: 60px 30px;
	border: 10px solid #e1e1e1;
	-moz-box-shadow: 0px 0px 8px #444;
	-webkit-box-shadow: 0px 0px 8px #444;
	<!--
}
</style>

<script type="text/javascript">
	function modifyFoodDonateDiv() {
		document.getElementById("donateFoodDiv").style.backgroundColor = "#c9d0de";
		document.getElementById("foodDonateForm").style.visibility = "visible";
		document.getElementById("donateFundDiv").style.backgroundColor = "transparent";
		document.getElementById("fundDonateForm").style.visibility = "hidden";
	}

	function modifyFundDonateDiv() {
		document.getElementById("donateFundDiv").style.backgroundColor = "#c9d0de";
		document.getElementById("fundDonateForm").style.visibility = "visible";
		document.getElementById("donateFoodDiv").style.backgroundColor = "transparent";
		document.getElementById("foodDonateForm").style.visibility = "hidden";
	}

	function showFoodDonateForm() {
		document.getElementById("foodDonateForm").style.visibility = "visible";
	}

	function hideFoodDonateForm() {
		document.getElementById("foodDonateForm").style.visibility = "hidden";
	}

	function showFundDonateForm() {
		document.getElementById("fundDonateForm").style.visibility = "visible";
	}

	function hideFundDonateForm() {
		document.getElementById("fundDonateForm").style.visibility = "hidden";
	}
</script>

</head>

<body>

	<%
		User user = (User) session.getAttribute("user");
	%>
	<div id="mainBanner">

		<form action="logOutPath" class="userDetailsForm">
			<button id="logoutButton">Logout</button>
		</form>

		<form class="userDetailsForm">
			<button id="userNameButton"><%=user.getUserName()%></button>
		</form>

		<h1
			style="float: left; margin-left: 50px; margin-top: 30px; color: yellow; font-size: 40px; font-family: cursive; font-style: italic;">
			Donate Food, Save lives!!</h1>

		<form>
			<div style="float: right; margin-top: 80px; margin-right: 75px">
				<ul id="menu">
					<li><a href="/com.AsePhase1/SuccessfulLoginProvider.jsp">Home</a></li>
					<li><a href="/com.AsePhase1/ProviderDonate.jsp">Donate</a></li>
					<li><a href="/com.AsePhase1/BlogPageBeforeLogin.jsp">Blog</a></li>
					<li><a href="/">About</a></li>
					<li><a href="/">Contact</a></li>
				</ul>
			</div>
		</form>
	</div>

	<div id="donateFoodDiv">

		<div style="margin-left: 100px">
			<img src="img\donateFood1.jpg" id="foodImage" width="125px"
				height="125px" onclick="modifyFoodDonateDiv()">
		</div>

		<div>
			<form action="foodDonationPath" method="post" id="foodDonateForm"
				style="visibility: hidden" onmouseover="showFoodDonateForm()">
				<input type="text" name="foodName"
					style="padding: 7px; width: 280px; border-spacing: 20px; margin-left: 10px; border-radius: 6px"
					placeholder="Food Name">
				<!--  -->
				<input type="text" name="foodType"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Food Type">
				<!--  -->
				<input type="text" name="foodQuantity"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Food Quantity">
				<!--  -->
				<input type="number" name="servingNumber"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Approximately, how many people could consume?">
				<!--  -->
				<input type="date" name="expiryDate"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Expiry Date">
				<!--  -->
				<textarea rows="4" cols="31" name="describeFood"
					style="margin-top: 10px; padding: 7px; width: 280px; margin-left: 10px; border-radius: 6px"
					placeholder="Describe Food"></textarea>
				<!--  -->
				<input type="text" name="foodAddress"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Address, where food to be collected">
				<!--  -->

				<input type="submit"
					style="padding: 8px; width: 300px; margin-left: 10px; margin-top: 10px; margin-bottom: 10px; background-color: #666699; font-weight: bold; border-radius: 6px"
					placeholder="submit">
				<!--  -->
			</form>
		</div>

	</div>


	<div id="donateFundDiv">

		<div style="margin-left: 100px">
			<img src="img\donateFunds.jpg" id="fundImage" width="125px"
				height="125px" onclick="modifyFundDonateDiv()">
		</div>

		<div>
			<form id="fundDonateForm" style="visibility: hidden"
				onmouseover="showFundDonateForm()">
				<input type="text"
					style="padding: 7px; width: 280px; border-spacing: 20px; margin-left: 10px; border-radius: 6px"
					placeholder="Enter Name on Debit card">
				<!--  -->
				<input type="number"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Enter Debit card Number">
				<!--  -->

				<input type="number"
					style="padding: 7px; width: 280px; margin-left: 10px; margin-top: 10px; border-radius: 6px"
					placeholder="Enter Amount in $ to Donate">
				<!--  -->
				<input type="checkBox"
					style="padding: 7px; margin-top: 10px; margin-left: 90px"
					name="debitFrequency" value="once"> One Time Debit</br>
				<!--  -->
				<input type="checkBox"
					style="padding: 7px; margin-top: 10px; margin-left: 90px"
					name="debitFrequency" value="monthly"> Allow Monthly Debit</br>
				<!--  -->
				<input type="checkBox"
					style="padding: 7px; margin-top: 10px; margin-left: 90px"
					name="debitFrequency" value="yearly"> Allow Yearly Debit
				<!--  -->

				<input type="submit"
					style="padding: 8px; width: 300px; margin-left: 10px; margin-top: 10px; margin-bottom: 10px; background-color: #666699; font-weight: bold; border-radius: 6px"
					placeholder="submit">
				<!--  -->
			</form>
		</div>
	</div>
</body>
</html>