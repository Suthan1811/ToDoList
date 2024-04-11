<%@page import="java.util.Base64" %>
<%@page import="dto.User" %>
<%@ page import="dto.Task" %>
 <%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- get user from session -->
<% User user=(User)request.getSession().getAttribute("user");%>
<% String username=user.getUsername();%>

<h2>Welcome<%= username %></h2>
<h2>Email:<%=user.getUseremail() %></h2>

<%String image=new String(Base64.getEncoder().encode(user.getUserimage())); %>
<img alt="" src="data:image/jpeg;base64,<%=image %>"width="150" height="100">
<a href="Addtask.jsp" >Add Task</a><br>

<h1>Tasks</h1>
<%List<Task> tasks=(List)request.getAttribute("tasks"); %>

<table border="5px">
<tr>
<th>id</th>
<th>title</th>
<th>description</th>
<th>priority</th>
<th>due data</th>
<th>status</th>
<th>delete</th>
<th>edit</th>

</tr>
<%int num=1; %>
<%for(Task task:tasks){ %>
<tr>
<td><%=task.getTaskid() %></td>
<td><%=task.getTasktitle() %></td>
<td><%=task.getTaskdescription() %></td>
<td><%=task.getTaskpriority() %></td>
<td><%=task.getTaskduedate() %></td>
<td><%=task.getTaskstatus() %></td>
<td><a href="delete?id"><%=task.getTaskid()%>Delete</a></td>
<td><a href="edit?id"><%=task.getTaskid()%>Edit</a></td>
</tr>


<%num+=1; %>
<%} %>
</table>
<br>
<br>
<a href="logout">Logout</a>
</body>
</html>