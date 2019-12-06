<%@ include file = "jsp/conn.jsp" %>
<%@ page errorPage = "jsp/error.jsp" %>
<%@ page import = "java.sql.*" %>
<%@ page import="java.io.*"%>


<% 
	String connURL = "jdbc:mysql://localhost/dynamicweb";
	Connection conn = null;
	Statement st = null;
	ResultSet resultSet = null;
	String g_id = request.getParameter("g_id");
	int passed_id = Integer.parseInt(g_id);
%>

<!DOCTYPE html>
<html>
<head>
	<title>QCU | Events</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/animation.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
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
			<div id="u-name-front" class=" u-name u-name-front">
				<p class="u-1 u-1-front">Quezon City</p>
				<p class="u-2 u-2-front"> University</p>
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
				<li class="n-list"><a class="active">News & Events</a>
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
		</main>
		</nav>
		<div class="menu-btn"><p class="" aria-hidden>=</p>
	</header>



	<section>
		<img class="ev-page-img page-img" src="img/sample6.JPG">
		<p class="img-src-desc">Picture of new building from 4th of QCU EM bldg. (Photo Credit: Lyndon Co) </p>
	
		<div class="ev-section">
				<article class="ev-s-bar">
				<div class="ev-poster-desc">
					<img class="ev-poster" src="img/sample6.JPG">


					<ul>
		<% 
		try{

			conn = DriverManager.getConnection(connURL, "root", "");
			st = conn.createStatement();
			
			String sql = "SELECT id, DAYNAME(date_start) as day_s, DATE_FORMAT(date_start, '%b %e, %Y') as date_s, TIME_FORMAT( time_start, '%h:%i %p' ) as time_s, DAYNAME(date_end) as day_e, DATE_FORMAT(date_end, '%b %e, %Y') as date_e, TIME_FORMAT( time_end, '%h:%i %p') as time_e, event_creator, title, location  FROM event_tbl WHERE id = '"+ passed_id +"' ";
					resultSet = st.executeQuery(sql);
			
			while(resultSet.next()){
		%>
						<li>
							<h5>Title:</h5>
							<p><%= resultSet.getString("title") %></p>
						</li>
						<li>
							<h5>Duration:</h5>
							
								<%= resultSet.getString("day_s") %>, 
								<%= resultSet.getString("date_s") %>, 
								<%= resultSet.getString("time_s") %> - 
								<% if(resultSet.getString("day_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("day_e")+", ");
								} %>
								<% if(resultSet.getString("date_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("date_e")+", ");
								} %> 
								<% if(resultSet.getString("time_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("time_e"));
								} %>
						</li>
						<li>
							<h5>Ticket:</h5>
							<p>Free</p>
						</li>
						<li>
							<h5>Location:</h5>
							<p><%= resultSet.getString("location") %> </p>
						</li>
						<li>
							<h5>Made By:</h5>
							<p><%= resultSet.getString("event_creator") %> </p>
							<p style="opacity: .5"> <i>Securitiyay Matilda President</i> </p>
						</li>
		<%
			}
		}catch (Exception ex){
			out.println(ex);
			
		}
		%>	
					</ul>	




				</div>
				<div class="ev-list">
					<h1>Event List</h1>


					<ul>
		<% 
		try{

			conn = DriverManager.getConnection(connURL, "root", "");
			st = conn.createStatement();
			
			String sql = "SELECT id, DAYNAME(date_start) as day_s, DATE_FORMAT(date_start, '%b %e, %Y') as date_s, TIME_FORMAT( time_start, '%h:%i %p' ) as time_s, DAYNAME(date_end) as day_e, DATE_FORMAT(date_end, '%b %e, %Y') as date_e, TIME_FORMAT( time_end, '%h:%i %p') as time_e, description, title FROM event_tbl WHERE date_start > CURRENT_DATE ";
					resultSet = st.executeQuery(sql);
			
			while(resultSet.next()){
		%>
						<li>
							<h3><%= resultSet.getString("title") %></h3>
							<p style="white-space:nowrap,overflow: hidden,text-overflow: ellipsis,max-width: 200px"><%= resultSet.getString("description") %></p>


							<p>
								<%= resultSet.getString("day_s") %>, <%= resultSet.getString("date_s") %>, <%= resultSet.getString("time_s") %> - 
								<% if(resultSet.getString("day_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("day_e")+", ");
								} %>
								<% if(resultSet.getString("date_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("date_e")+", ");
								} %> 
								<% if(resultSet.getString("time_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("time_e"));
								} %>

							</p>
							<a style="text-decoration: none,color:black" href="event.jsp?g_id=<%= resultSet.getString("id") %>" >...Read more</a>

						</li>
		<%
			}
		}catch (Exception ex){
			out.println(ex);
			
		}
		%>			</ul>

				</div>
				<div class="btn-align">
					<button class="s-bar-button"><h2>More Event</h2></button>
				</div>

			</article>
					<% 
		try{

			conn = DriverManager.getConnection(connURL, "root", "");
			st = conn.createStatement();
			
			String sql = "SELECT DAYNAME(date_start) as day_s, DATE_FORMAT(date_start, '%b %e, %Y') as date_s, TIME_FORMAT( time_start, '%h:%i %p' ) as time_s, DAYNAME(date_end) as day_e, DATE_FORMAT(date_end, '%b %e, %Y') as date_e, TIME_FORMAT( time_end, '%h:%i %p') as time_e, event_creator, title, description FROM event_tbl WHERE id = '"+ passed_id +"' ";
					resultSet = st.executeQuery(sql);
			
			while(resultSet.next()){
		%>
			<main>
				<div class="ev-head">
					<p class="ev-author"><b><%= resultSet.getString("event_creator") %></b></p>
					<h1><%= resultSet.getString("title") %></h1>
						<p class="ev-page-date"><%= resultSet.getString("day_s") %>, 
								<%= resultSet.getString("date_s") %>, 
								<%= resultSet.getString("time_s") %> - 
								<% if(resultSet.getString("day_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("day_e")+", ");
								} %>
								<% if(resultSet.getString("date_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("date_e")+", ");
								} %> 
								<% if(resultSet.getString("time_e")==null){
									out.println("");
								}else{
									out.println(resultSet.getString("time_e"));
								} %></p>
				</div>
				<article>
							<p><%= resultSet.getString("description") %></p>

					
				</article>
			</main>
		<%
			}
		}catch (Exception ex){
			out.println(ex);
			
		}
		%>	

		</div>
	</section>

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

			$(".ev-list ul li p").text(function(index, currentText) {
    			return currentText.substr(0, 60);
			});
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
			$("#sld-show").addClass(".sld-show-changed").end().removeClass(".sld-show");
		  } else {
			$("#sld-show").removeClass(".sld-show-changed").end().addClass(".sld-show");
		  }



		  if (document.body.scrollTop || document.documentElement.scrollTop) {
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


	</script>
</body>
</html>