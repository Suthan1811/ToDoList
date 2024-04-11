<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dto.Task" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Task task =(Task)request.getAttribute("task"); %>
<form action="updatetask" method="post">
		<label>Task Id:</label><br>
		<input type= "text" name = "taskid" required><br>
		
		<label>Task Title:</label><br>
		<input type= "text" name = "tasktitle" required><br>
		
		<label>Task Description:</label><br>
		<input type= "text" name = "taskdescription" ><br>
		
		<label>Options :</label><br>
		<label for="option1">
		<input type= "radio" id="option1" value="low" name = "taskpriority" > Low
		</label><br>
		<label for="option2">
		<input type= "radio" id="option2" value="medium" name = "taskpriority" > Medium
		</label><br>
		<label for="option3">
		<input type= "radio" id="option3" value="high" name = "taskpriority" > High
		</label><br>
		
		
		Due Date:<input type= "date" name = "taskduedate"  value="<%=task.getTaskduedate()%>"><br>
		Status:<input type="text" name="taskstatus" value="<%=task.getTaskstatus() %>"><br>
		
		<input type="submit">
	</form>


</body>
</html>