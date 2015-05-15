<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.AsePhase2.View.User"%>
<%@ page import="com.AsePhase2.View.ExtractTweets"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="scripts/jquery-2.1.1.js"></script>

<title>Food Provider</title>
<style>
html {
	height: 100%;
}

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

form.userForm input#logoutButton {
	position: absolute;
	margin-left: 1098px;
	border-radius: 4px;
	margin-top: 3px;
	padding: 10px 10px;
	width: 100px;
}

form.userForm button#userNameButton {
	position: absolute;
	margin-left: 945px;
	border-radius: 4px;
	margin-top: 3px;
	padding: 10px 10px;
	width: 150px;
}

form.userForm button:HOVER {
	background-color: teal;
}

.imageSlider {
	position: relative;
	float: left;
	width: 380px;
	height: 280px;
	margin-top: 20px;
	border: 10px;
	margin-bottom: 60px;
	border-radius: 10px 10px 0 0;
	margin-right: 28px;
	float: left;
}

.imageSliderTextClass {
	font-size: 20px;
	font-family: serif;
	color: olive;
}

.imageSliderImageClass {
	width: 380px;
	height: 240px;
	margin-right: 30px;
}

.imageSliderImageClass:hover {
	opacity: 0.6;
}

.arrowLeft {
	position: absolute;
	top: 170px;
	left: 0px;
	width: 40px;
	height: 40px;
	visibility: hidden;
}

.arrowLeft:HOVER {
	opacity: 0.3;
}

.arrowRight {
	position: absolute;
	top: 170px;
	right: 0px;
	width: 40px;
	height: 40px;
	visibility: hidden;
}

.arrowRight:HOVER {
	opacity: 0.3;
}

td {
	border: solid black 1px;
}

table {
	border-spacing: 5px;
}

tr {
	background-color: #FFFFCC;
}
</style>

<script type="text/javascript">
	var imageCount1 = 1;
	var total1 = 4;
	var imageCount2 = 1;
	var total2 = 4;
	var imageCount3 = 1;
	var total3 = 4;

	var image1Links = [
			"http://www.cyc-net.org/cyc-online/cycol-0904-Homelessness.html",
			"http://www.heartforuganda.com/orphan-crisis/",
			"https://buddhistglobalrelief.wordpress.com/category/food-security/",
			"http://www.foodfororphans.org/content/facts-figures-and-quotes" ];

	var image2Links = [
			"http://www.theguardian.com/sustainable-business/2014/apr/01/business-reactions-ipcc-climate-change-report-experts",
			"http://www.theguardian.com/environment/2014/mar/31/climate-change-threat-food-security-humankind",
			"http://www.carbonbrief.org/blog/2014/03/the-impacts-of-climate-change-in-three-charts-key-charts-in-the-ipcc%E2%80%99s-working-group-2-summary-for-policymakers/?utm_content=buffer10fd8&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer",
			"http://www.theguardian.com/environment/2014/mar/31/climate-change-report-ipcc-governments-unprepared-live-coverage" ];

	var image3Links = [ "http://www.worldbank.org/en/topic/poverty/overview",
			"http://www.fao.org/publications/sofi/2014/en/",
			"http://www.fao.org/hunger/en/", "http://hornofafrica.ssrc.org/" ];

	function showArrows1() {
		document.getElementById("imageLeftArrow1").style.visibility = "visible";
		document.getElementById("imageRightArrow1").style.visibility = "visible";
		document.getElementById("imageSliderImage1").style.opacity = "0.6";
	}

	function hideArrows1() {

		document.getElementById("imageLeftArrow1").style.visibility = "hidden";
		document.getElementById("imageRightArrow1").style.visibility = "hidden";
		document.getElementById("imageSliderImage1").style.opacity = "1";
	}

	function getPrevImage1() {

		imageCount1 = imageCount1 - 1;

		if (imageCount1 < 1) {
			imageCount1 = 4;
		}

		document.getElementById('imageSliderImage1').src = "img/food"
				+ imageCount1 + ".jpg";

		document.getElementById("imageLink1").href = image1Links[imageCount1 - 1];
	}

	function getNextImage1() {

		imageCount1 = imageCount1 + 1;

		if (imageCount1 > total1) {
			imageCount1 = 1;
		}

		document.getElementById('imageSliderImage1').src = "img/food"
				+ imageCount1 + ".jpg";

		document.getElementById("imageLink1").href = image1Links[imageCount1 - 1];
	}

	function showArrows2() {
		document.getElementById("imageLeftArrow2").style.visibility = "visible";
		document.getElementById("imageRightArrow2").style.visibility = "visible";
		document.getElementById("imageSliderImage2").style.opacity = "0.6";
	}

	function hideArrows2() {

		document.getElementById("imageLeftArrow2").style.visibility = "hidden";
		document.getElementById("imageRightArrow2").style.visibility = "hidden";
		document.getElementById("imageSliderImage2").style.opacity = "1";
	}

	function getPrevImage2() {

		imageCount2 = imageCount2 - 1;

		if (imageCount2 < 1) {
			imageCount2 = 4;
		}

		document.getElementById('imageSliderImage2').src = "img/EnvironmentalThreats"
				+ imageCount2 + ".jpeg";

		document.getElementById("imageLink2").href = image2Links[imageCount2 - 1];

	}

	function getNextImage2() {

		imageCount2 = imageCount2 + 1;

		if (imageCount2 > total2) {
			imageCount2 = 1;
		}

		document.getElementById('imageSliderImage2').src = "img/EnvironmentalThreats"
				+ imageCount2 + ".jpeg";

		document.getElementById("imageLink2").href = image2Links[imageCount2 - 1];

	}

	function showArrows3() {

		document.getElementById("imageLeftArrow3").style.visibility = "visible";
		document.getElementById("imageRightArrow3").style.visibility = "visible";
		document.getElementById("imageSliderImage3").style.opacity = "0.6";

	}

	function hideArrows3() {

		document.getElementById("imageLeftArrow3").style.visibility = "hidden";
		document.getElementById("imageRightArrow3").style.visibility = "hidden";
		document.getElementById("imageSliderImage3").style.opacity = "1";
	}

	function getPrevImage3() {

		imageCount3 = imageCount3 - 1;

		if (imageCount3 < 1) {
			imageCount3 = 4;
		}

		document.getElementById('imageSliderImage3').src = "img/WorksAndReviews"
				+ imageCount3 + ".jpg";

		document.getElementById("imageLink3").href = image3Links[imageCount3 - 1];

	}

	function getNextImage3() {

		imageCount3 = imageCount3 + 1;

		if (imageCount3 > total3) {
			imageCount3 = 1;
		}

		document.getElementById('imageSliderImage3').src = "img/WorksAndReviews"
				+ imageCount3 + ".jpg";

		document.getElementById("imageLink3").href = image3Links[imageCount3 - 1];
	}
</script>

</head>

<body>

	<%
		User user = (User) session.getAttribute("user");
			
			ArrayList<String> tweetsList = new ArrayList<String>();
		
		ExtractTweets extractTweets = new ExtractTweets();
		
		tweetsList = extractTweets.getTweets();
	%>

	<div id="mainBanner">

		<form action="logOutPath" method="post" class="userForm">
			<input type="submit" id="logoutButton" value="Logout">
		</form>

		<form method="post" class="userForm">
			<button id="userNameButton"><%=user.getUserName()%></button>
		</form>

		<h1
			style="float: left; margin-left: 50px; margin-top: 30px; color: yellow; font-size: 40px; font-family: cursive; font-style: italic;">
			Donate Food, Save lives!!</h1>

		<form action="successfulLoginProviderNavigation" method="post">
			<div style="float: right; margin-top: 80px; margin-right: 75px">
				<ul id="menu">
					<li><a href="/com.AsePhase1/SuccessfulLoginProvider.jsp">Home</a></li>
					<li><a href="/com.AsePhase1/ProviderDonate.jsp">Donate</a></li>
					<li><a href="/">Feeds</a></li>
					<li><a href="/">Blog</a></li>
					<li><a href="/">About Us</a></li>
				</ul>
			</div>
		</form>
	</div>

	<div id="videoBox"
		style="float: Right; margin-top: 15px; margin-right: 330px">
		<video width="500px" height="280px" controls> <source
			src="img\video2.mp4" type="video/mp4"></video>
	</div>

	<div id="socialMediaBox"
		style="float: left; height: 280px; width: 320px; background-color: silver; margin-top: 10px; border-radius: 10px; overflow: scroll">

		<p
			style="font-size: 20px; margin-left: 20px; margin-top: 15px; border-radius: 6px;">
			<b>Tweets</b>
		</p>

		<table style="overflow: scroll; margin-left: 10px;">
			<tr>
				<td><%=tweetsList.get(0)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(1)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(2)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(3)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(4)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(5)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(6)%></td>
			</tr>

			<tr>
				<td><%=tweetsList.get(7)%></td>
			</tr>
		</table>

	</div>

	<div class="imageSlider" style="float: left">

		<div id="imageSlider1">

			<p class="imageSliderTextClass" id="imageSliderText1">
				<b>Homeless, Orphans and Food Security</b>
			</p>
			<a id="imageLink1"
				href="http://www.cyc-net.org/cyc-online/cycol-0904-Homelessness.html"
				target="_blank"> <img class="imageSliderImageClass"
				id="imageSliderImage1" onmouseover="showArrows1()"
				onmouseout="hideArrows1()" src="img\food1.jpg" />
			</a>
			<!--  -->
			<img class="arrowLeft" id="imageLeftArrow1"
				onmouseover="showArrows1()" onmouseout="hideArrows1()"
				onclick="getPrevImage1()" src="img\arrow_left.jpg" />
			<!--  -->
			<img class="arrowRight" id="imageRightArrow1"
				onmouseover="showArrows1()" onmouseout="hideArrows1()"
				onclick="getNextImage1()" src="img\arrow_right.jpg" />
		</div>
	</div>

	<div class="imageSlider" style="float: left">

		<div id="imageSlider2">

			<p class="imageSliderTextClass" id="imageSliderText2">
				<b>Environmental Disasters</b>
			</p>

			<a id="imageLink2"
				href="http://www.theguardian.com/sustainable-business/2014/apr/01/business-reactions-ipcc-climate-change-report-experts"><img
				class="imageSliderImageClass" id="imageSliderImage2"
				onmouseover="showArrows2()" onmouseout="hideArrows2()"
				src="img\EnvironmentalThreats1.jpeg"></a>
			<!--  -->
			<img class="arrowLeft" id="imageLeftArrow2"
				onmouseover="showArrows2()" onmouseout="hideArrows2()"
				onclick="getPrevImage2()" src="img\arrow_left.jpg">
			<!--  -->
			<img class="arrowRight" id="imageRightArrow2"
				onmouseover="showArrows2()" onmouseout="hideArrows2()"
				onclick="getNextImage2()" src="img\arrow_right.jpg">
		</div>

	</div>

	<div class="imageSlider" style="float: right; margin-right: 0px">
		<div id="imageSlider3">
			<p class="imageSliderTextClass" id="imageSliderText3">
				<b>Works and Reviews</b>
			</p>
			<a id="imageLink3"
				href="http://www.worldbank.org/en/topic/poverty/overview"
				target="_blank"><img class="imageSliderImageClass"
				id="imageSliderImage3" onmouseover="showArrows3()"
				onmouseout="hideArrows3()" src="img\WorksAndReviews1.jpg"></a>
			<!--  -->
			<img class="arrowLeft" id="imageLeftArrow3"
				onmouseover="showArrows3()" onmouseout="hideArrows3()"
				onclick="getPrevImage3()" src="img\arrow_left.jpg">
			<!--  -->
			<img class="arrowRight" id="imageRightArrow3"
				onmouseover="showArrows3()" onmouseout="hideArrows3()"
				onclick="getNextImage3()" src="img\arrow_right.jpg">
		</div>
	</div>
	<p></p>
</body>
</html>