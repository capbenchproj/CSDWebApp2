package model;

import static org.junit.Assert.*;

import java.sql.Connection;
import org.junit.Test;

public class DBConnectorTest {
	
	@Test
	public void testConnectToDatabase() 
	{

		Connection con = DBConnector.connectToDatabase();
		
		if (con == null)
		{
			fail("Connection Failed");
		}
		else
		{
			DBConnector.closeDatabaseConnection(con);
		}
	}
}
