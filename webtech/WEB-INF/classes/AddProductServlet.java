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
public class AddProductServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		 String prod_name=request.getParameter("nam");
		String prod_category=request.getParameter("category");
		String prod_image=request.getParameter("product_image");
		String prod_price=request.getParameter("price");
		String prod_desc=request.getParameter("product_desc");


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
 		 
   		PreparedStatement st= c.prepareStatement("insert into products(product_name,product_category,product_image,product_price,product_desc) values(?,?,?,?,?);");
		
		st.setString(1, prod_name);
		st.setString(2, prod_category);
		st.setString(3, prod_image);
		st.setString(4, prod_price);
		st.setString(5, prod_desc);
		st.executeUpdate();
		out.print("<script type=\"text/javascript\">");
   		out.print("alert('Product Added!');");
   		out.println("location='adminhomepage.jsp';");
   		out.print("</script>"); 
		 	
   		return;
		 		  		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}