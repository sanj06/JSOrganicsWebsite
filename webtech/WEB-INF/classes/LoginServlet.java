import java.io.IOException;
import java.io.*; 
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
public class LoginServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		
		String mail=request.getParameter("email");
		String pw=request.getParameter("pwd");
		int n = mail.indexOf('@');
		String subString="";
			if (n != -1) 
			{
			    subString= mail.substring(0 , n);
			}

		
		//request.getRequestDispatcher("homepage.html").include(request, response);  
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
		
 
		 while(rs.next()) {
		 	out.print("hello");
		 	 HttpSession session = request.getSession();
		 	 //session.setAttribute("usermail",mail);

		 	 request.setAttribute("name",subString);

 		 	 request.getRequestDispatcher("loggedhomepage.jsp").forward(request, response);  
		 	
		 	return;
		 }
		
		  

		out.print("<script type=\"text/javascript\">");
   		out.print("alert('Wrong Email or password!');");
   		out.println("location='homepage.jsp';");
   		out.print("</script>"); 
		

		 	
   		
		 		  
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}