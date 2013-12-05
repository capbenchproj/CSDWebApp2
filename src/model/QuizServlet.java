package model;

import java.io.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;



@WebServlet(name="model.QuizServlet",urlPatterns={"/servlet/model.QuizServlet"})
@SuppressWarnings("serial")
public class QuizServlet extends HttpServlet {
  
  String DBPassword;         // Temp variable for the password
  Connection con;


  public void doGet(HttpServletRequest req, HttpServletResponse rsp)
                throws ServletException, IOException 
  {
    rsp.setContentType("text/html");
    PrintWriter out = rsp.getWriter();
    
    try{
        con = DBConnector.connectToDatabase();               // Opens a connection
        Statement statement = con.createStatement();    		// Creates a query statement object
        
        ResultSet res = statement.executeQuery("SELECT * FROM answers");  // Finds the username
        
        while(res.next())
 			{   
     	   	out.println("<tr bgcolor=ffffdd>");
 		 	out.println("<td><font face=Sysfaen size=4>"+res.getInt(1)+"</font></td>");
 		    out.println("<td><font face=Sysfaen size=4>"+res.getString(2)+"</font></td>");
    		out.println("</tr>");
 	    }
   
        
        res.close();    // Closes ResultSet
        statement.close();   // Closes Statement
        DBConnector.closeDatabaseConnection(con); // Closes the connection
        
   }
   catch (SQLException ex)
   {
        while(ex != null){
              System.out.println("SQLState: " + ex.getSQLState());
             System.out.println("Error Code: " + ex.getErrorCode());
             System.out.println("Message: " + ex.getMessage());
             
             Throwable t = ex.getCause();
             
             while (t !=null)
             {
                   System.out.println("Cause: " + t);
                   t = t.getCause();
             }
             
        }
   }

    

    
  }

  public void doPost(HttpServletRequest req, HttpServletResponse rsp)
                throws ServletException, IOException {
    doGet(req,rsp);
  }

}