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
public class SignUpServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		 String un=request.getParameter("nam");
		String mail=request.getParameter("email");
		String pw=request.getParameter("pwd");
		String mobno=request.getParameter("mob");
		String addr=request.getParameter("address");


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
 		 PreparedStatement ps= c.prepareStatement("select * from registeredusers where mail_id=? and password=?;");
 		 ps.setString(1, mail);
 		 ps.setString(2, pw);
 		 ResultSet rs = ps.executeQuery();
		
 
		 while (rs.next()) {
		 	 out.print("<script type=\"text/javascript\">");
   		out.print("alert('Aldready Registered! Please Log in.');");
   		out.println("location='homepage.jsp';");
   		out.print("</script>"); 
		 	
		 	return;
		 }
		


   		PreparedStatement st= c.prepareStatement("insert into registeredusers values(?,?,?,?,?);");
		
		st.setString(1, un);
		st.setString(2, mail);
		st.setString(3, pw);
		st.setString(4, mobno);
		st.setString(5, addr);
		st.executeUpdate();
		out.print("<script type=\"text/javascript\">");
   		out.print("alert('Registered!');");
   		out.println("location='homepage.jsp';");
   		out.print("</script>"); 
		 	
   		return;
		 		  
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}