

<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>JS Organics</title>
	<style type="text/css">
		table,td{
			
			text-align: center;
		}
		

		a:link, a:visited {
			  background-color: white;
			  color: gray;
			  padding: 15px 25px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
		}

		 a:active {
  			background-color: white;
		}
		a:hover{
			color: white;
			background-color: gray;
		}

		* {box-sizing:border-box}

						
		/* On hover, add a black background color with a little bit see-through */
		.prev:hover, .next:hover {
		  background-color: rgba(0,0,0,0.8);
		}

		/* Caption text */
		.text {
		  color: #f2f2f2;
		  font-size: 30px;
		  padding: 8px 12px;
		  position: absolute;
		  bottom: 8px;
		  width: 100%;
		  text-align: center;
		  font-family:Comic Sans MS;
		}

		
		.active, .dot:hover {
		  background-color: #717171;
		}

			

		#btn {
		  background-color: #d5d5f6 ;	
		  color: #595959;
		  padding: 10px 20px;
		  border: none;
		  cursor: pointer;
		  
		  margin-bottom:10px;
		  opacity: 0.8;
		  text-align: center;
		}
		#btn:hover {
		  opacity: 1;
		}

		
		.zoom:hover {
  transform: scale(1.25);
   /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}

	</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>
	<table cellpadding="10px" cellspacing="0" style="width:100%; ">
		<center><h1 style='font-family:Comic Sans MS; font-size: 50px ' > Cart </h1></center>

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
	out.println(" <tr><td  rowspan='2' style='width:40%'><img class='zoom' src='img/"+ image+ "' style='height:400px; width:400px; transition: transform .2s;'></td><td colspan='2'> <h4 style='font-family:Comic Sans MS; font-size: 35px' >" + name + "</h4></td></tr><tr><td style='width:30%'><h5 style='font-family:Comic Sans MS; font-size: 25px' > Rs " + price + "</h5><form action='RemoveFromCart' method='post'><input type='submit' name='remove' value='Remove' style=' background-color: gray; color: white;  padding: 15px 25px; text-align: center; '><input type='hidden' name='product_id' value='" + id + "'></form></td><td style='width:30%'><p style='font-family:Comic Sans MS; font-size: 20px' >" + desc + "</p></td></tr>");
	

}





rs.close();
st.close();
con.close();
%>


</body>



</html>