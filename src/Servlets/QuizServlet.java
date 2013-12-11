package Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Quiz;

@WebServlet("/QuizServlet")
public class QuizServlet extends HttpServlet 
{
	 
	private static final long serialVersionUID = 1L;



	// GET & POST METHODS
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doStuff(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doStuff(request, response);
	}
	
	
	
	// CODE
	private void doStuff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  
	{	
		// Create a New Quiz Class
		Quiz quiz = new Quiz();
		 
		// Get List of Questions
		List<String> question = quiz.getQuestions();
		
		// Where the JSP will link to
		RequestDispatcher reqDis = request.getRequestDispatcher("quiz.jsp");
		
		//Create an attribute to pass information back to the JSP
		request.getSession().setAttribute("question", question);
		
		//Test Attribute
		String stringTest = "Yay I'm working !!!!";
		request.getSession().setAttribute("testString", stringTest);
		
		//Forward the Request
		reqDis.forward(request, response);		
	}
	
	
}
