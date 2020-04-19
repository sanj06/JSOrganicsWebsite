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
public class RemoveFromCart extends HttpServlet {
	
	
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
PreparedStatement st= con.prepareStatement("delete from cart where product_id=?;");
		
		st.setString(1,prod_id);
		st.executeUpdate();

		 	 out.print("<script type=\"text/javascript\">");
   		out.print("alert('Removed From Cart!');");
   		out.println("location='cartopen.jsp';");
   		out.print("</script>"); 



		 }catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}