<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
out.print(session.getAttribute("testString"));

	List question = (List)session.getAttribute("question"); 
	
		
	//Iterator it = question.iterator();
   	//while(it.hasNext())
   	//{
	//	out.print(it.next()+"<br/>");
  	//}


%>
</body>
</html>