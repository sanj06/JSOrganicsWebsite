import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class LoginValidateServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                      throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
       // request.getRequestDispatcher("loggedhomepage.html").include(request, response);  
          
        HttpSession session = request.getSession(false);
        if (session!=null) {
        String name=(String)session.getAttribute("name"); 
        out.print("<h1>Hello, "+name+" Welcome to Profile</h1>"); 
        
        request.getRequestDispatcher("loggedhomepage.jsp").include(request, response);

          
         
        }  
        else{  
           out.print("<script type=\"text/javascript\">");
        out.print("alert('Please login first!');");
        out.println("location='homepage.jsp';");
        out.print("</script>"); 

        }  
        out.close();  
    }  
}  