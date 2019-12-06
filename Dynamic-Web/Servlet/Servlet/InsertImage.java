package Servlet;

import java.io.*;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* Servlet implementation class InsertImage
*/
public class InsertImage extends HttpServlet {

/**
*
*/
private static final long serialVersionUID = -337920480578240289L;

/**
* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");

try
{
	String strpath = request.getParameter("Image");
	String filepath = strpath.substring(strpath.lastIndexOf("\\")+1);
	File imgfile = new File(strpath);
FileInputStream fin = new FileInputStream(imgfile);
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamicweb","root","");
PreparedStatement pre = con.prepareStatement("insert into upload_image(IMAGE,Image_name,Image_length) values(?,?,?)");
pre.setBinaryStream(1,fin,(int)imgfile.length());
pre.setString(2,filepath);
pre.setLong(3,imgfile.length());
pre.executeUpdate();
pre.close();
String L_url1=response.encodeRedirectURL("myUpload.jsp");
response.sendRedirect(L_url1);

}
catch(Exception ex){
System.out.println("Exception in InsertImage servlet"+ex.getMessage());
}
}

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
* Handles the HTTP <code>GET</code> method.
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

/**
* Handles the HTTP <code>POST</code> method.
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

/**
* Returns a short description of the servlet.
* @return a String containing servlet description
*/

public String getServletInfo() {
return "Short description";
}// </editor-fold>

}