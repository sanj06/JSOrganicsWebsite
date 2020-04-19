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
ResultSet rs = st.executeQuery("select * from cart;"); // this is for name


while(rs.next())


{	
			String id = rs.getString("product_id");
	        String name = rs.getString("product_name");
            String category = rs.getString("product_category");
            String image = rs.getString("product_image");
            String price = rs.getString("product_price");
            String desc = rs.getString("product_desc");
	out.println(" <tr><td  rowspan='2' style='width:40%'><img class='zoom' src='img/"+ image+ "' style='height:400px; width:400px; transition: transform .2s;'></td><td colspan='2'> <h4 style='font-family:Comic Sans MS; font-size: 40px' >" + name + "</h4></td></tr><tr><td style='width:30%'><h5 style='font-family:Comic Sans MS; font-size: 25px' > Rs " + price + "</h5><form action='' method='post'><input type='submit' name='Buy' value='Buy Now' style=' background-color: gray; color: white;  padding: 15px 25px; text-align: center; '><input type='hidden' name='product_id' value='" + id + "'></form></td><td style='width:30%'><p style='font-family:Comic Sans MS; font-size: 20px' >" + desc + "</p></td></tr>");
	return;

}
out.println("<center><img src='img/cartempty.png'></center>");
rs.close();
st.close();
con.close();
%>