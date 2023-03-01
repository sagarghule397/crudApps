<%@page import="Emp.Employee"%>
<%@page import="Emp.EmployeeInfo"%>
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
   int user_id= Integer.parseInt(request.getParameter("id"));
   Employee e=new Employee();
   e.setId(user_id);
  boolean isDeleted=EmployeeInfo.DeleteData(e);
    if(isDeleted)
    {
    	response.sendRedirect("ShowData.jsp");
    }
%>
</body>
</html>