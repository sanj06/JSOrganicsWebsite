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
public class DeleteProductServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		 String productId=request.getParameter("prod_id");
		
		
		PrintWriter out = response.getWriter();
		//out.println("SUCCESS!");  
		// Connect to mysql and verify username password
		//out.println(""+un+mail+pw+mobno+addr);  
		
		try {
			//out.println("try!");  
			Class.forName("com.mysql.jdbc.Driver");
			//out.println("driver!");  
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "sanjana123"); // gets a new connection
 		//out.println("CONN!"); 
 		PreparedStatement st= c.prepareStatement("delete from products where product_id=?;");
		
		st.setString(1, productId);
		st.executeUpdate();

		 	 out.print("<script type=\"text/javascript\">");
   		out.print("alert('Product Removed!');");
   		out.println("location='adminhomepage.jsp';");
   		out.print("</script>"); 
		 	
				
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}