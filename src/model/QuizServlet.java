package model;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.mysql.jdbc.Connection;

@WebServlet(name="model.QuizServlet",urlPatterns={"/servlet/model.QuizServlet"})
@SuppressWarnings("serial")
public class QuizServlet extends HttpServlet {

  String question, answerA, answerB, answerC, answerD, correct;

  public void init() throws ServletException {
    question = getInitParameter("question");
    answerA  = getInitParameter("answerA");
    answerB  = getInitParameter("answerB");
    answerC  = getInitParameter("answerC");
    answerD  = getInitParameter("answerD");
    correct  = getInitParameter("correct");
    if (question == null || answerA == null || answerB == null ||
        answerC == null || answerD == null || correct == null) {
      throw new ServletException("Missing required init parameter(s)!");
    }
  }

  public void doGet(HttpServletRequest req, HttpServletResponse rsp)
                throws ServletException, IOException {
    rsp.setContentType("text/html");
    PrintWriter out = rsp.getWriter();

    String answer = req.getParameter("answer");
    
    try {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

    String sourceURL = new String("jdbc:odbc:MyQuiz");//DSN name
    Connection databaseConnection = (Connection) DriverManager.getConnection(sourceURL);
    if (databaseConnection != null)
        out.println("<P>Connection made<BR>");

    Statement myStatement = databaseConnection.createStatement();
    ResultSet results = myStatement.executeQuery ("SELECT * FROM Answers;");
    String test = null;
    results.getString(test);
    


    out.println("<html>");
    out.println("<head><title> Online Quiz </title></head>");
    out.println("<body>");

    
    if (answer == null) {
      StringBuffer action = req.getRequestURL();

      out.println("<form action=\"" + action + "\" method=\"POST\">\n");
      out.println("<p><b>Question:</b> " + question + "</p>");
      out.println("<p><input type=\"radio\" name=\"answer\" " +
                  "value=\"A\" /> " + answerA + "<br />" + test);
      out.println("   <input type=\"radio\" name=\"answer\" " +
                  "value=\"B\" /> " + answerB + "<br />");
      out.println("   <input type=\"radio\" name=\"answer\" " +
                  "value=\"C\" /> " + answerC + "<br />");
      out.println("   <input type=\"radio\" name=\"answer\" " +
                  "value=\"D\" /> " + answerD + "<br />");
      out.println("   <input type=\"submit\" value=\"Submit\" /></p>");
      out.println("</form>");
    } else {
      if (answer.equals(correct))
        out.println("<p><b>YES!</b> That's the right answer!</p>");
      else
        out.println("<p><b>Sorry.</b> That's the wrong answer.</p>");
    }

    out.println("</body></html>");
    
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  }

  public void doPost(HttpServletRequest req, HttpServletResponse rsp)
                throws ServletException, IOException {
    doGet(req,rsp);
  }

}