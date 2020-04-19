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
public class DeleteOfferServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		 String offername=request.getParameter("offer_name");
		String offerimage=request.getParameter("offer_image");
		
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
 		 PreparedStatement ps= c.prepareStatement("select * from offers where offer_name=?;");
 		 ps.setString(1, offername);
 		 ResultSet rs = ps.executeQuery();
		
 
		 while (rs.next()) {
		 	PreparedStatement st= c.prepareStatement("delete from offers where offer_name=?;");
		
		st.setString(1, offername);
		st.executeUpdate();

		 	 out.print("<script type=\"text/javascript\">");
   		out.print("alert('Offer Removed!');");
   		out.println("location='adminhomepage.jsp';");
   		out.print("</script>"); 
		 	
		 	return;
		 }
		


   		
				
		
		out.print("<script type=\"text/javascript\">");
   		out.print("alert('Offer does not exist!');");
   		out.println("location='adminhomepage.jsp';");
   		out.print("</script>"); 
		 	
   		return;
		 		  
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}