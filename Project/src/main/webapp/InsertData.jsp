<%@page import="Emp.EmployeeInfo"%>
<%@page import="Emp.Employee"%>
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
int id=Integer.parseInt(request.getParameter("id"));
int age=Integer.parseInt(request.getParameter("age"));
String fname=request.getParameter("fn");
String lname=request.getParameter("ln");
String email=request.getParameter("email");

Employee e=new Employee();
e.setId(id);
e.setFirst_name(fname);
e.setFirst_name(fname);
e.setLast_Name(lname);
e.setEmail(email);
e.setAge(age);

boolean status=EmployeeInfo.InsertData(e);
if(status){
	response.sendRedirect("HomePage.html");
}else{
	out.print("Some Error");
	out.print("<br><br>");
	out.print("<a href='HomePage.html'>Home</a>");
}

%>
</body>
</html>