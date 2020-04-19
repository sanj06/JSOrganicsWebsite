<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> --%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
//out.println("Checkusername");
//out.println("<td>"+ JSP+ "</td>");

//out.println("HELLO");

Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "sanjana123");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from offers;"); // this is for name


while(rs.next())


{	          
     String image = rs.getString("offer_image");
            
	out.println("<div class='mySlides'><img src='img/" + image + "' style='width:100%'></div>");

}
rs.close();
st.close();
con.close();
%>