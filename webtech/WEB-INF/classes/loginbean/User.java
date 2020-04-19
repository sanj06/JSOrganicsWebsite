package loginbean;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.io.IOException;
import java.io.*; 

public class User implements java.io.Serializable{
	String name="";
	String mailId="";
	String password="";
	String mobileNumber="";
	String address="";
	boolean loggedIn= false;

	public User(){}

	public boolean isLoggedIn()
	{
		return loggedIn;
	}

	public void setName(String n)
	{
		name=n;
	}

	public void setMailId(String m)
	{
		mailId=m;
	}

	public void setMobileNumber(String mn)
	{
		mobileNumber=mn;
	}

	public void setAddress(String a)
	{
		address=a;
	}

	public String getName()
	{
		return name;
	}

	public String getMailId()
	{
		return mailId;
	}

	public String getMobileNumber()
	{
		return mobileNumber;
	}

	public String getAddress()
	{
		return address;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String p)
	{
		password=p;
	}


	public boolean login(String url)
	{
		try {
			//out.println("try!");  
			Class.forName("com.mysql.jdbc.Driver");
			//out.println("driver!");  
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "sanjana123"); // gets a new connection
 		//out.println("CONN!"); 
 		 PreparedStatement ps= c.prepareStatement("select * from registeredusers where mail_id=? and password=?;");
 		 ps.setString(1, mailId);
 		 ps.setString(2, password);
 		 ResultSet rs = ps.executeQuery();

 		 if(rs.next())
 		 {
 		 	loggedIn=true;
 		 	
 		 }
 		 else
 		 {
 		 	loggedIn=false;
 		 	ps.close();
 		 	c.close();
 		 }	 
		
		} catch (Exception e) {
			
			loggedIn=false;// TODO Auto-generated catch block
			System.out.println(e);
		}
		return loggedIn;
	}

	public void logOut()
	{
		loggedIn=false;
	}

}

