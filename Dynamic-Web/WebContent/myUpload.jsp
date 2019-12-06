<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="Servlet.*,java.util.*,javax.swing.*, java.io.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<form name="frm" method="post" action="./InsertImage">
			<table>
				<tr><td ><B>Upload Image</B></td>
				<td><input type="file" name="Image" size="20" value=""></TD>
				</tr>
				<tr>
				<td><input type="submit" height="30" width="62"> </td>
				</tr>
				<tr>
				<td><b>ClickImage</b>
					<%
					GetImage udet = new GetImage();
					Vector<String[]> V_ids= new Vector<String[]>();
					V_ids=udet.ImageList();
						for(int i=0;i<V_ids.size();i++){
						String temp[] = new String[2];
						int j=i+1;
						temp=(String[])V_ids.get(i);
					%>
				</td>
				<td>
					<a target='_blank' href='<%= response.encodeURL("RetrieveImage?Image_id="+temp[0])%>' onmouseover='_ScrollStatus("Click here for view", 1);' onmouseout='_StopScrollStatus();' onblur='_StopScrollStatus();'>
						<b><%= temp[1] %> </b>
					</a>
					
				</td>
				<%		} %>
				</tr>
			</table>
		
		</form>
	</body>
</html>