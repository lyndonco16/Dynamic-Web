<%@ include file = "jsp/conn.jsp" %>
<%@ page errorPage = "jsp/error.jsp" %>
<%@ page import = "java.sql.*" %>
<%@ page import="java.io.*"%>


<% 
String connURL = "jdbc:mysql://localhost/dynamicweb";
Connection conn = null;
Statement st = null;
ResultSet resultSet = null;
Blob image = null;
byte[ ] imgData = null ;

%>
<!DOCTYPE html>

<html>
<head>
	<title>Quezon City University</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/animation.css">
<script src="jquery-3.3.1.js"></script>

<style type="text/css">
@font-face {
	font-family: 'Neuton Regular', Barlow, Arial, Times New Roman, Sans-serif;
	src: url('font/Neuton-SC-Regular.ttf'), url('font/Neuton-Regular.ttf'), url('font/Barlow-Regular.ttf'), url('font/Sanchezregular.otf');
}

</style>
</head>
<body>
				<!--     >>>>>>>>>>>>>>  		NAVIGATION BAR	  	<<<<<<<<<<<<<<<         -->
	<div id="u-name-shad" class=" u-name shad-light"></div>
	<header class="shad-light">
		<a href="index.jsp">
			<img id="logo-front" class="logo logo-front" src="img/QPU-logo.png">
				<div class="u-name u-name-front" id="u-name-front">
					<p class="u-1 u-1-front">Quezon City</p>
					<p class="u-2 u-2-front">University</p>
				</div>

			<span id="span" class="span-hide"><b>Quezon City University</b></span>
		</a>
		<nav>
			<ul>
				<li class="n-list"><a>Admission</a>
					<ul>
						<li><a href="#">Scholarship</a></li>
						<li><a href="#">Graduate</a></li>
						<li><a href="#">Undergraduate</a></li>
					</ul>
				</li>
				<li class="n-list"><a>News & Events</a>
					<ul>
						<li><a href="news.jsp">News</a></li>
						<li><a href="event.jsp">Events</a></li>
						<li><a href="#">Announcememt</a></li>
						<li><a href="#">University Calendar</a></li>
					</ul>
				</li>
				<li class="n-list"><a>About</a>
					<ul>
						<li><a href="#">Mission-Vision</a></li>
						<li><a href="#">Organizational Charts</a></li>
						<li><a href="#">QCPU Hymn</a></li>
						<li><a href="#">University Policies</a></li>
						<li><a href="#">Gallery</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</li>

				<li class="n-list"><a>Academics</a>
					<ul>
						<li><a href="#">Course Offered</a></li>
						<li><a href="#">Campuses</a></li>						
						<li><a href="#">Student Organization</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div class="menu-btn"><p class="" aria-hidden>=</p></div>
	</header>
				<!--     >>>>>>>>>>>>>>		sld SHOW 		<<<<<<<<<<<<<<<         -->



	<div id="sld-show" class="sld-show">
	  <img class="num-sld fx" src="img/sample6.JPG">
	  <img class="num-sld fx" src="img/QCPU-withlogo.jpg">
	  <img class="num-sld fx" src="img/sample1.jpg">
	  <img class="num-sld fx" src="img/QCPU-techvoc.jpg">
	  <img class="num-sld fx" src="img/sample5.JPG">
	  <img class="num-sld fx" src="img/sample2.jpg">
	  <img class="num-sld fx" src="img/sample3.jpg">
	  <img class="num-sld fx" src="img/sample4.jpg">
	</div>

				<!--     >>>>>>>>>>>>>>		SEPARATOR 		<<<<<<<<<<<<<<<         -->

	<div class="separator-sldr">
			<div class="trapz"></div>
	</div>
				<!--     >>>>>>>>>>>>>>  NEWS <<<<<<<<<<<<<<<         -->


	<div class="contnr nw-contnr">
		<div class="ne-contnr-btn contnr-btn">
			<h1 class="category"><a href="">NEWS</a></h1>
		</div>
		<div class="nw-sect">
			<a class="nw-anchor" href="">
				<div class="nw-img-sect">
					<img  class="nw-img" src="img/LZ.jpg">
				</div>
				<div class="nw-ar-sect">
					<h4 class="nw-ar-subject">Education</h4>
					<p class="nw-ar-content">Pelican taught fish to fly, Amazing!<span class="read-more"> ...read more</span>
					</p>
				</div>
			</a>
			<a class="nw-anchor" href="">
				<div class="nw-img-sect">
						<img  class="nw-img"  src="img/LP.jpg">
				</div>
				<div class="nw-ar-sect">
					<h4 class="nw-ar-subject">Science & Technology</h4>
					<p class="nw-ar-content">Students research create science technology driver<span class="read-more"> ...read more</span>
					</p>
				</div>
			</a>
			<a class="nw-anchor" href="">
				<div class="nw-img-sect">		
					<img  class="nw-img"  src="img/AS.jpg">
				</div>
				<div class="nw-ar-sect">
					<h4 class="nw-ar-subject">Tournament</h4>
					<p class="nw-ar-content"> You can never beat Batman because he is Batman<span class="read-more"> ...read more</span>
					</p>
				</div>
			</a>
			<a class="nw-anchor" href="">
				<div class="nw-img-sect">		
					<img  class="nw-img"  src="img/Pinknumb.jpg">
				</div>
				<div class="nw-ar-sect">
					<h4 class="nw-ar-subject">Engineer</h4>
					<p class="nw-ar-content">Jose Rizal about building another damn in Dapitan <span class="read-more"> ...read more</span>
					</p>
				</div>
			</a>
		</div>
	</div>




								<!--     >>>>>>>>>>>>>> 	EVENTS  <<<<<<<<<<<<<<<         -->
	<div class="contnr event-contnr">
		<div class="ev-contnr-btn contnr-btn">
			<h1 class="category"><a href="">EVENTS</a></h1>
		</div>
		<div class="event-sect">
					<a class="event-anchor" href="">
				<div class="ev-date">
					<p>Dec</p>
					<p>9</p>
				</div>
				<div class="event-img-sect">
						<img  class="event-img"  src="img/Eagles.jpg">
				</div>
				<div class="event-ar-sect">
					<p class="event-ar-date" >Monday, 7:00am - 7:00pm</p> 
					<h3 class="event-ar-subject">YRU Lab Bubble</h3>
					<p class="event-ar-add">5 Diana Calipso St, Shampoo, The Man of Guz</p> 

				</div>
			</a>
		<% 
		try{

			conn = DriverManager.getConnection(connURL, "root", "");
			st = conn.createStatement();
			String sql = "SELECT id, date_start, time_start, date_end, time_end, img, title, location FROM event_tbl ORDER BY id LIMIT 3;";
			resultSet = st.executeQuery(sql);
			
			while(resultSet.next()){
		%>

			<a class="event-anchor" href="event.jsp?g_id=<%= resultSet.getString("id")%>">
				<div class="ev-date">
					<p><%= resultSet.getString("date_start") %></p>
					<p>9</p>
				</div>
				<div class="event-img-sect">
						<img  class="event-img"  src="">
						<%= resultSet.getBlob("img") %>
				</div>
				<div class="event-ar-sect">
					<p class="event-ar-date"><%= resultSet.getString("time_start") %></p> 
					<h3 class="event-ar-subject"><%= resultSet.getString("title") %></h3>
					<p class="event-ar-add"><%= resultSet.getString("location") %></p> 

				</div>
			</a>

		<%
			}
		}catch (Exception ex){
			out.println(ex);
			
		}
		%>			
			
		</div>
	</div>
				<!--     >>>>>>>>>>>>>> 	Text CONTENT (Might delete later)  <<<<<<<<<<<<<<<         -->		


<footer>
	<div class="footer-contnr">
		<div class="foot-bx bx1">
			<h2>Quezon City</h2>
			<h3>University</h3>
		</div>
		<div class="foot-bx bx2">
			<ul>
				<li><a href="">Enroll Now</a></li>
				<li><a href="">Apply Now</a></li>
			</ul>
		</div>
	</div>
	<div class="c-right">&copy; Quezon City University 2019</div>
</footer>

	<script>
											//For navigation bar
		$(document).ready(function(){
			$('.menu-btn').hover(function(){
				$('nav').toggleClass('active');
			});

			$('ul li').hover(function(){
				$(this).siblings().removeClass('active');
				$(this).toggleClass('active');
			});
		});


		//For changing navigation style when scrolled down

		window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		  if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 10) {
			$("#sld-show").addClass("sld-show-changed").end().removeClass("sld-show");
			$("#sld-show img").addClass("num-sld-changed").end().removeClass("num-sld");

		  } else {
			$("#sld-show").removeClass("sld-show-changed").end().addClass("sld-show");
			$("#sld-show img").removeClass("num-sld-changed").end().addClass("num-sld");
		  }



		  if (document.body.scrollTop > 450 || document.documentElement.scrollTop > 450) {
			$("#logo-shad").addClass("logo-shrink").end().removeClass("logo shad");
			$("#u-name-shad").addClass("u-name-shrink").end().removeClass("u-name shad");
		  	$("#logo-front").addClass("logo-shrink").end().removeClass("logo logo-front");
		  	$("#u-name-front").addClass("u-name-shrink").end().removeClass("u-name u-name-front");
		  	$("#span").addClass("span-show").end().removeClass("span-hide");
		  } else {
		  	$("#logo-front").removeClass("logo-shrink").end().addClass("logo logo-front");
			$("#u-name-front").removeClass("u-name-shrink").end().addClass("u-name u-name-front");
			$("#logo-shad").removeClass("logo-shrink").end().addClass("logo shad");
			$("#u-name-shad").removeClass("u-name-shrink").end().addClass("u-name shad");
		  	$("#span").removeClass("span-show").end().addClass("span-hide");
		  }
		}

		//For sldshow
		var myIndex = 0;
		sldShow();
		function sldShow() {
		  var picCount;
		  var sldPic = document.getElementsByClassName("num-sld");
		  for (picCount = 0; picCount < sldPic.length; picCount++) {
		    sldPic[picCount].style.display = "none";
		  }
		  myIndex++;
		  if (myIndex > sldPic.length) {myIndex = 1}
		  sldPic[myIndex-1].style.display = "block";
		  setTimeout(sldShow, 8000);
		}
	</script>
</body>
</html>
