package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

	// Details for the server

	private static String databaseURL = "jdbc:mysql://46.32.254.62:3306/legitnet_interviewapp";
	private static String username = "legitnet_app";
	private static String password = "HNIPySef3CoG";

	protected static Connection connectToDatabase() {
		// Creates a connection and returns the connection.

		Connection con = null;
		// Create a connection variable

		try {
			con = DriverManager.getConnection(databaseURL, username, password); // Creates
																				// the
																				// connection
		} catch (SQLException ex) {
			while (ex != null) {
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("Error Code: " + ex.getErrorCode());
				System.out.println("Message: " + ex.getMessage());

				Throwable t = ex.getCause();

				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
		return con;
	}

	protected static void closeDatabaseConnection(Connection con) {
		try {

			con.close();

		} catch (SQLException ex) {
			while (ex != null) {
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("Error Code: " + ex.getErrorCode());
				System.out.println("Message: " + ex.getMessage());

				Throwable t = ex.getCause();

				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
