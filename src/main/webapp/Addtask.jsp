<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddTask</title>
<style>
body{
text-align:center;
background-color:#cccccc;

background-image:url("https://cdn.pixabay.com/photo/2017/07/04/10/05/checklist-2470549_1280.jpg");
background-repeat:no-repeat;
background-size: cover;
display: flex;
justify-content: center;
flex-direction: column;
}

form{
text-align:center;
}
</style>
</head>
<body>
	<form action="addtask" method="post">
		<label>Task Id:</label><br>
		<input type= "text" name = "taskid" required><br>
		<br>
		
		<label>Task Title:</label><br>
		<input type= "text" name = "tasktitle" required><br>
		<br>
		
		<label>Task Description:</label><br>
		<input type= "text" name = "taskdescription" ><br>
		<br>
		
		<label>Options :</label><br>
		<label for="option1">
		<input type= "radio" id="option1" value="low" name = "taskpriority" >Low
		</label><br>
		<br>
		<label for="option2">
		<input type= "radio" id="option2" value="medium" name = "taskpriority" >Medium
		</label><br>
		<br>
		<label for="option3">
		<input type= "radio" id="option3" value="high" name = "taskpriority" >High
		</label><br>
		<br>
		<br>
		<br>
		<label>Due Date:</label><br>
		<input type= "date" name = "taskduedate" ><br><br>
		<br>
		
		<input type="submit">
	</form>

</body>
</html>