<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit::Task</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
font-family: monospace;
}
body{
height:100vh;
width:100%;
display:flex;
align-items: center;
justify-content: center;  
}
form{
border: 1px solid #888;
padding: 10px 50px;
display:flex;
flex-direction: column;
height:580px;
width:550px; 
font-size: 16px;
justify-content:center;
align-items:left; 
border-radius: 5px;
background-color: #fff; 
color: orangered;
}

input{
padding:1px 10px;
font-size: 15px;

width: 100%;
outline: none;
border: 1px solid #888;
border-radius:3px; 
}
.btn{
font-size:17px;
width:150px;
text-align: center;
padding: 3px 10px;
cursor: pointer;
border-style: none;
border-radius: 4px;
background-color: yellowgreen;

}
#taskid{
color: #888;
}
body{
background-color:rgb(183,204,139); 
}
.btn:hover {
	background-color:darkgreen; 
}
</style>
</head>
<body>
	
	<% Task task = (Task)request.getAttribute("task"); %>
	

		<form action="updatetask" method="post">
	    Task Id <input type="text" name="taskid" id="taskid" value="<%=task.getTaskid() %>" id="taskid" readonly><br>
		Task Title<input type="text" name="tasktitle" value="<%=task.getTasktitle() %>" required><br>
		Task Description<input type="text" name="taskdescription" value="<%=task.getTaskdescription() %>"><br>
		<h4>Current task priority : <%= task.getTaskpriority() %></h4>
		Task priority:
		 <label for="option1">
            <input type="radio" id="option1" value="low" name="taskpriority" > Low 
        </label><br>
        <label for="option2">
            <input type="radio" id="option2" value="medium" name="taskpriority" >  Medium
        </label><br>
        <label for="option3">
            <input type="radio" id="option3" value="high" name="taskpriority" > High 
        </label><br>
		Due Date:<input type="date" name="taskduedate" value="<%=task.getTaskduedate() %>"><br>
		Status:<input type="text" name="taskstatus" value="<%=task.getTaskstatus() %>"><br>
		
		<input  class="btn" type="submit">
		
	
	
	</form>
	
	
	
</body>
</html>