<%@page contentType="text/html" pageEncoding="UTF-8"%>



<jsp:useBean id="user" class="loginbean.User" scope="session"/>
  <jsp:setProperty name="user" property="*"/>
  <!DOCTYPE html>
  <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    	<%
    		session.setMaxInactiveInterval(1800);
    		user.login("jdbc");
    		if(user.isLoggedIn() && request.getParameter("mailId")=="sanjana@gmail.com"){
    			//out.println("Name : "+user.getName()+"<br/>Mobile Number : " + user.getMobileNumber()+ "<br/> Address : " + user.getAddress());
           RequestDispatcher rd=request.getRequestDispatcher("/adminhomepage.jsp");  
           rd.include(request, response);   
        }
        else if(user.isLoggedIn()){
          //out.println("Name : "+user.getName()+"<br/>Mobile Number : " + user.getMobileNumber()+ "<br/> Address : " + user.getAddress());
           RequestDispatcher rd=request.getRequestDispatcher("/loggedhomepage.jsp");  
           rd.include(request, response);   
        }
    		else
    			out.print("<script type=\"text/javascript\">");
      out.print("alert('Wrong Email or password!');");
      out.println("location='homepage.jsp';");
      out.print("</script>"); 
    
    	%>
    </body>
   </html>
