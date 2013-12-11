package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector 
{

	// Details for the server	
	private static String databaseURL = "jdbc:mysql://46.32.254.62:3306/legitnet_interviewapp";
	private static String username = "legitnet_fhsoah";
	private static String password = "NTohqIhpyJ2GFW3Lym";

	// Creates a connection and returns the connection.
	protected static Connection connectToDatabase() 
	{
		// Creates a connection variable
		Connection con = null;

		try 
		{
			//Creates the Connection
			con = DriverManager.getConnection(databaseURL, username, password);
		} 
		catch (SQLException ex) 
		{
			while (ex != null) 
			{
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("Error Code: " + ex.getErrorCode());
				System.out.println("Message: " + ex.getMessage());

				Throwable t = ex.getCause();

				while (t != null) 
				{
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
		return con;
	}

	// Closes the DB Connection
	protected static void closeDatabaseConnection(Connection con) 
	{
		try 
		{
			con.close();
		} 
		catch (SQLException ex) 
		{
			while (ex != null) 
			{
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("Error Code: " + ex.getErrorCode());
				System.out.println("Message: " + ex.getMessage());

				Throwable t = ex.getCause();

				while (t != null) 
				{
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
