<%@page import="java.sql.ResultSet"%>
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

<center>
<table border="1">
<tr> <th>ID</th> <th>First_NAME</th> <th>Last_Name</th>  <th>Email</th>  <th>Age</th>

<th>Update Row</th>
<th>Delete Row</th> 

</tr>
<%
ResultSet rs=EmployeeInfo.Showdata();

while(rs.next())
{
	out.println("<tr>");

out.println("<td>");
out.println(rs.getInt(1));
out.println("</td>");

out.println("<td>");
out.println(rs.getString(2));
out.println("</td>");


out.println("<td>");
out.println(rs.getString(3));
out.println("</td>");

out.println("<td>");
out.println(rs.getString(4));
out.println("</td>");


out.println("<td>");
out.println(rs.getInt(5));
out.println("</td>");

out.println("<td>");
out.println("<a href='UpdateInfo.jsp?id="+rs.getInt(1)+"'>Update </a>");
out.println("</td>");


out.println("<td>");
out.println("<a href='DeleteData.jsp?id="+rs.getInt(1)+"'>Delete </a>");
out.println("</td>");


out.println("</tr>");

}


%>


</table>
</center>

</body>
</html>