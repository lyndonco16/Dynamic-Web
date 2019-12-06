<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>
<%@	page import="java.text.SimpleDateFormat"%>
<%@	page import="java.sql.Connection"%>
<%@	page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*" %>

<% 
//                            """"""""""""  VARIABLES TYPE HERE  """"""""""""""

String eventTitle,startDate, startTime, endDate, endTime, eventBy, posterImage, eventDescription, eventLocation, eventTix, refundPolicy, conNum, webLink, eventVideo, comEmail, fbPage, reqBy;

	 try {
		 String connURL = "jdbc:mysql://localhost/dynamicweb";
		 Connection conn = null;
		 Statement st = null;


		eventTitle = request.getParameter("title");
		startDate = request.getParameter("s-d");
		startTime = request.getParameter("s-t");
		endDate = request.getParameter("e-d");
		endTime = request.getParameter("e-t");
		eventBy = request.getParameter("e-m-b");
		posterImage = request.getParameter("p-img");
		eventDescription = request.getParameter("desc");
		eventLocation = request.getParameter("ev-loc");
		eventTix = request.getParameter("tix");
		refundPolicy = request.getParameter("ref-pol");
		conNum = request.getParameter("c-num");
		webLink = request.getParameter("w-link");
		eventVideo = request.getParameter("vid");
		comEmail = request.getParameter("c-e-m");
		fbPage = request.getParameter("fb-p");
		reqBy = request.getParameter("req-b");

		 //load jdbc driver "com.mysql.jdbc.Driver"
		Class.forName("com.mysql.jdbc.Driver");

		//db username is "root" & db password is "" 
		conn = DriverManager.getConnection(connURL, "root", "");	
		st = conn.createStatement();


		st.executeUpdate("INSERT INTO event_tbl(date_start, time_start, date_end, time_end, event_creator, img, title, description, location, tricket_price, refund_policy, contact_no, website_name, video, registered_count, attendees_type, email, facebook_page, posted_by, position, approved, edited, edited_by) VALUES( '"+ startDate +"', '"+  startTime +"', '"+  endDate +"', '"+  endTime +"', '"+  eventBy +"', '"+  posterImage +"', '" +eventTitle +"', '"+  eventDescription +"', '"+  eventLocation +"', '"+  eventTix +"', '"+  refundPolicy +"', '"+  conNum +"', '"+  webLink +"', '"+  eventVideo +"', '1', 'anyone', '"+  comEmail +"', '"+  fbPage +"', '"+  reqBy +"', 'position none', 'pending', ' no', 'none')");
	%>







	<div class="modal-box" style="border:1px solid black ">
	<div class="modal-content">
		<p class="exit">&times;</p>

		<h1>New Event has Added</h1>
	</div>
</div>

<script>

	$(document).ready(function(){
		$('.button').click(function(){
			$('div.modal-box').toggle();
		});
		$('.exit').click(function(){
			$('div.modal-box').hide();
		});
	});
</script>


	<%	response.sendRedirect("../create_event.jsp");

		}catch(Exception e){
			out.println(e);
		}


%>