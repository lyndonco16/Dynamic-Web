<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
	try{
	/* here mysqltest is the database name. 
	   you have to hive database name you 
	   have created and 3306 is the default sql port 
	 */
	   String connectionURL = "jdbc:mysql://localhost/dynamicweb";

	//declare a aconnection by using Connection interface
	Connection  connection = null;

	//load jdbc driver "com.mysql.jdbc.Driver"
	Class.forName("com.mysql.jdbc.Driver");
	
	/* "root" and "root" are the mysql username and password.
		If you have a different username and password you have to change that in code
	*/

	
	/*	Creat a connection by using getConnection() method that takes parameters 
		of string type  connection url, user name and password to connect to database	
	*/
		connection = DriverManager.getConnection(connectionURL, "root", "");	
		if(!connection.isClosed())
			connection.close();
		}catch(Exception ex){
			out.println(ex);
		 } %>
