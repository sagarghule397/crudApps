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
int x=Integer.parseInt(request.getParameter("id"));
session.setAttribute("ID_VAL",x);
%>

Id <%=x %>
<form action="UpdateForm.jsp">

FirstName:<input type="text" name="fn"><br>
LAstName:<input type="text" name="ln"><br>
Email:<input type="text" name="email"><br>
Age:<input type="text" name="age"><br>

<input type="submit" value="Update">
<br/>
<a href="ShowData.jsp.jsp">View Data</a>
</form>
</body>
</html>