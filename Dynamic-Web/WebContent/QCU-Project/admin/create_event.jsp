<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>
<%@	page import="java.text.SimpleDateFormat"%>
<%@	page import="java.sql.Connection"%>
<%@	page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="jquery-3.3.1.js"></script>
<script>
		$('div.modal-box').hide();
</script>

	<style type="text/css">
		

	</style>
</head>
<body>
	<% 	
	String yearString = new SimpleDateFormat("yyyy").format(new Date());
	int yearInt = Integer.parseInt(yearString); 
	%>
	
	<form action="DBConnect/create_eventDB.jsp">							
		<label>Title:</label>
			<input type="text" name="title"><br>

		<label>Start Date & Time:</label>
			<input type="date" name="s-d"><input type="Time" name="s-t"><br>						

		<label>End Date & Time:</label>
			<input type="date" name="e-d"><input type="Time" name="e-t"><br>

		<label>Event Made By:</label>
			<input type="text" name="e-m-b"><br>

		<label>Poster:</label>
			<input type="file" name="p-img"><br>

		<label>Description:</label>
			<input type="text" name="desc"><br>

		<label>Location:</label>
			<input type="text" name="ev-loc"><br>

		<label>Ticket Price:</label>
			<input type="text" name="tix"><br>

		<label>Refund Policy:</label>
			<input type="text" name="ref-pol"><br>

		<label>Contact No:</label>
			<input type="tel" name="c-num"><br>


		<label>Website Link:</label>
			<input type="text" name="w-link"><br>

		<label>Video(Optional):</label>
			<input type="file" name="vid"><br>

		<label>Company E-mail:</label>
			<input type="text" name="c-e-m"><br>

		<label>Facebook Page:</label>
			<input type="text" name="fb-p"><br>

		<label>Requested by:</label>
			<input type="text" name="req-b"><br>

		
		<input type="submit" name=""  value="Send Request">	
	</form>



<input type="submit"  class="button modal-btn" name="submit">


</body>
</html>