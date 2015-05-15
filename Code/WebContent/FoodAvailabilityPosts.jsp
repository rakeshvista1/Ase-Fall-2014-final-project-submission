<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.AsePhase2.View.User"%>
<%@ page import="com.AsePhase2.View.FoodPosts"%>
<%@ page import="com.AsePhase2.View.Converter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Food Posts</title>
<style>
body {
	margin-left: 75px;
	margin-right: 75px;
	background-color: white;
}

div#mainBanner {
	height: 130px;
	background: linear-gradient(#47D147, #398739);
	position: relative;;
}

form.userDetailsForm input#logoutButton {
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

form#userForm input#logoutButton {
	position: absolute;
	margin-left: 1098px;
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

table {
	border-collapse: collapse;
}

.hiden {
	visibility: hidden;
}
</style>

<script>
	function getMaps() {
		alert("get Maps");
	}

	function hidePost(clickedButton) {
		/*var table = document.getElementById('foodPostTable');
		var cell = table.rows[0].cells[0];
		var value = cell.firstChild.data;
		cell.firstChild.data = 'my new text';*/
		//var buttonRef = document.getElementById('button1');
		clickedButton.innerHTML = "reserved";
		clickedButton.disabled = "true";
	}
</script>

</head>

<body>

	<%
		User user = (User) session.getAttribute("user");
		FoodPosts foodPosts = (FoodPosts) session.getAttribute("foodPosts");
		
		ArrayList<String> foodName = foodPosts.getFoodName();
		ArrayList<String> foodType = foodPosts.getFoodType();
		ArrayList<String> foodQuantity = foodPosts.getFoodQuantity();
		ArrayList<String> servingNumber = foodPosts.getServingNumber();
		ArrayList expiryDate = foodPosts.getExpiryDate();
		ArrayList<String> describeFood = foodPosts.getDescribeFood();
		ArrayList<String> foodAddress = foodPosts.getFoodAddress();
	%>

	<div id="mainBanner">

		<form action="logOutPath" method="post" id="userForm">
			<input type="submit" id="logoutButton" value="Logout">
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
					<li><a href="/com.AsePhase1/FoodAvailabilityPosts.jsp">Posts</a></li>
					<li><a href="/">Blog</a></li>
					<li><a href="/">About</a></li>
					<li><a href="/">Contact</a></li>
				</ul>
			</div>
		</form>
	</div>


	<div
		style="height: 500px; width: 630px; margin-top: 20px; margin-left: 300px; overflow-y: scroll;">

		<table id="foodPostTable" style="width: 610px;">

			<tr id="foodPostRow1"
				style="background-color: lime; border: 1px solid black; margin-bottom: 20px">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(0) + " for " + servingNumber.get(0) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(0)%></td>
						</tr>
					</table>
				</td>

				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>

				<td><a
					href="http://maps.google.com/maps?saddr=333 W. 11th Street, Kansas City, MO 64105 &daddr=<%=foodAddress.get(0)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>
			</tr>

			<tr
				style="background-color: lime; border: 1px solid black; margin: 50px">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(1) + " for " + servingNumber.get(1) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(1)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>

				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(1)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(2) + " for " + servingNumber.get(2) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(2)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>

				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(2)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>
			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(3) + " for " + servingNumber.get(3) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(3)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(3)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(4) + " for " + servingNumber.get(4) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(4)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(4)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(5) + " for " + servingNumber.get(5) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(5)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(5)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(6) + " for " + servingNumber.get(6) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(6)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(6)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(7) + " for " + servingNumber.get(7) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(7)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(7)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(8) + " for " + servingNumber.get(8) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(8)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(8)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>

			<tr style="background-color: lime; border: 1px solid black">

				<td id="foodPostData1" width="70%">
					<table>
						<tr>
							<td><%=foodName.get(9) + " for " + servingNumber.get(9) + " people is available1"%></td>
						</tr>
						<tr>
							<td><%="Expiry Date is : " + expiryDate.get(9)%></td>
						</tr>
					</table>
				</td>
				<td width="20%" align="right">
					<button id="button1" style="height: 60px; width: 100px;"
						onclick="hidePost(this)">ReserveB</button>
				</td>
				<td><a
					href="http://maps.google.com/maps?saddr=Miller Nichols Library, kansas city, MO &daddr=<%=foodAddress.get(9)%>"
					target="_blank"><img src="img\location.jpg"
						style="height: 60px; width: 60px;"></a></td>

			</tr>
		</table>

	</div>

</body>
</html>