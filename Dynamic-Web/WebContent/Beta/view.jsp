<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.*"%>
<%
	OutputStream stream = response.getOutputStream();  
	int count;
	Blob image = null;
	Connection con = null;
	byte[ ] imgData = null ;
	Statement stmt1 = null;
	ResultSet rs1 = null;
	Statement stmt = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");c
	con = DriverManager.getConnection("jdbc:mysql://localhost/dynamicweb","root","");
				 try{
					stmt = con.createStatement();
					rs = stmt.executeQuery("SELECT img FROM event_tbl");
				    	while(rs.next()){
							image = rs.getBlob(1);
							imgData = image.getBytes(1,(int)image.length());
							stream.write(imgData);
					}
				        

					
					
	%> asfdaf<%

			// display the image

				}catch(Exception e) {
					out.println("Unable To Display image");
					out.println("Image Display Error=" + e.getMessage());
					return;
				}finally{
					try{
						rs.close();
						stmt.close();
						con.close();
					}catch(SQLException e) {
						e.printStackTrace();
					}
				}
					
		
		
	// display the image
		
		
		
		
		
		

%>
					