package model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBConnection.DBConnector;

public class Quiz {


	public List<String> getQuestions() throws IOException 
	{
		Connection con = null;
	    List<String> question = new ArrayList<String>();
	    ResultSet res = null;
	    
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");
	        con = DBConnector.connectToDatabase();               // Opens a connection
	        Statement statement = con.createStatement();    		// Creates a query statement object
	        
	        res = statement.executeQuery("SELECT * FROM answers"); 

	        while(res.next())
	 		{   
	        	question.add(res.getString(2));
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
	   } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
		return question;

	}

	

}
