<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
     String name1 = request.getParameter("Ename");
     String email = request.getParameter("mail");
     String password1 = request.getParameter("password1");
     String password2 = request.getParameter("password2");
     String mobile = request.getParameter("number");
     if(password1.equals(password2))
     {
    	Random random = new Random();
    	int temp = random.nextInt(10000);
    	if(temp<1000)
    	{
    		temp+=1000;
    	}
    	 String id = "gl"+temp;
    	 String url = "jdbc:mysql://localhost:3306?user=root&password=Pass@0198";
    	 String query = "insert into projects1.gleamlub (userid, name, email, password, mobile) values(?,?,?,?,?)";
         Class.forName("com.mysql.jdbc.Driver");
         Connection connection = DriverManager.getConnection(url);
         PreparedStatement ps = connection.prepareStatement(query);
         ps.setString(1, id);
         ps.setString(2, name1);
         ps.setString(3, email);
         ps.setString(4, password1);
         ps.setString(5, mobile);
        int x =  ps.executeUpdate();
        if(x>0)
        {
        	session.setAttribute("id", id);
        	RequestDispatcher dispatcher = request.getRequestDispatcher("successnote.jsp");
        	dispatcher.include(request, response);
        }
         connection.close();
         
     }
     else
     {
    	 %>
    	 window.location.href = "signup.jsp";
    	 <%
     }
  %>
</body>
</html>