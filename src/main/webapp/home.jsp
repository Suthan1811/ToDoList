<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style >
*{
	margin:0px;
	padding:0px;
}
table{
width:60%;

}
table,td,th{
	border: 1px solid black;
	border-collapse: collapse;
	
}
th{
background-color: #D8EBF3;
color:black;
}
td{
background-color: gray;
color:black;
}
#bg_img{
color:#D8EBF3;
height:100vh;
background-image: url("https://cdn.pixabay.com/photo/2017/07/04/10/05/checklist-2470549_1280.jpg");
background-position: center;
background-repeat: no-repeat;
background-size: cover;
display: flex;
justify-content: center;
flex-direction: column;

}
#a{
	text-decoration: none;
	border: 3px solid white;
	border-radius: 10px;
	width: 100px;
	color: white;
	padding: 5px;
	
}

	a:hover {
	border: 1px solid black;
	background: linear-gradient(45deg,aqua, white);
	width: 135px;
	color: black;
}
</style>
</head>
<body>
<div id="bg_img">
<div id="content">
<%User u = (User)request.getSession().getAttribute("user"); %>
<h1>Welcome <%=u.getUsername() %></h1>
<br>

<h3>Email :<%=u.getUseremail() %></h3>
<br>
<h3>Contact :<%=u.getUsercontact() %></h3>
<%String image = new String(Base64.getEncoder().encode(u.getUserimage())); %>
<img alt="" src="data:image/jpeg;base64,<%= image  %>" width="150px" height="150px">
<br><br>
<a href="Addtask.jsp" id="a">Add Task</a><br>
</div>
<center><h2>Tasks</h2></center>

<%List<Task> tasks = (List)request.getAttribute("tasks");%>

<center><table>
<tr>
<th>Id</th>
<th>Title</th>
<th>Description</th>
<th>Priority</th>
<th>Due date</th>
<th>Status</th>
<th>Delete</th>
<th>Edit</th>
</tr>
<% int num=1; %>
<%for(Task task : tasks){ %>

<tr>
<td><%= task.getTaskid() %></td>
<td><%= task.getTasktitle() %></td>
<td><%= task.getTaskdescription() %></td>
<td><%= task.getTaskpriority()%></td>
<td><%= task.getTaskduedate() %></td>
<td><%= task.getTaskstatus() %></td>
<td><a href="delete?id=<%=task.getTaskid() %>">Delete</a>
<td><a href="edit?id=<%=task.getTaskid() %>">Edit</a>

</td>

</tr>
<%num=num+1; %>
<%} %>

</table>
<br>
<a href="logout" id="a" class="a">LogOut</a>
</center>
</div>

</body>
</html>