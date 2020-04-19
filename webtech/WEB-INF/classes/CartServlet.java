import java.io.IOException;
import java.io.*; 
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class CartServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		 String prod_id=request.getParameter("product_id");
		


		PrintWriter out = response.getWriter();
		//out.println("SUCCESS!");  
		// Connect to mysql and verify username password
		//out.println(""+un+mail+pw+mobno+addr);  
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "sanjana123");
Statement sta=con.createStatement();
ResultSet rs = sta.executeQuery("select * from products where product_id=" + prod_id ); // this is for name


while(rs.next())


{	
			String product_id = rs.getString("product_id");
	        String prod_name = rs.getString("product_name");
            String prod_category = rs.getString("product_category");
            String prod_image = rs.getString("product_image");
            String prod_price = rs.getString("product_price");
            String prod_desc = rs.getString("product_desc");


   		PreparedStatement st= con.prepareStatement("insert into cart values(?,?,?,?,?,?);");
		st.setString(1, product_id);
		st.setString(2, prod_name);
		st.setString(3, prod_category);
		st.setString(4, prod_image);
		st.setString(5, prod_price);
		st.setString(6, prod_desc);
		st.executeUpdate();
		out.print("<script type=\"text/javascript\">");
   		out.print("alert('Added to Cart!');");
   		out.println("location='cartopen.jsp';");
   		out.print("</script>"); 
		 	
   		return;
		 		  		
		
		}





		 }catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}