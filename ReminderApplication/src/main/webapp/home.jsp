<%
	if(session.getAttribute("name") == null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Reminder Home</title>



<style>
	#main{
		margin: auto;
		width: 40%;
	}
	#btnn{
		margin: auto;
		width: 40%;
	}
</style>
</head>
<body>

	<div align="center">
		<h4 class="mt-4 mb-2">Welcome to Reminder Application<p class="text-primary"><%=session.getAttribute("name") %></p></h4>
		<p class="mb-5">Today is <span id='date-time'></span>.</p>
		<div id="main">
			
			<a type="button" class="btn btn-outline-primary btn-block" href="setReminder.jsp">Set Reminder</a>
			<a type="button" class="btn btn-outline-success btn-block" href="modify.jsp">Modify Reminder</a>
			<a type="button" class="btn btn-outline-info btn-block" href="#">Disable Reminder</a>
			<a type="button" class="btn btn-outline-secondary btn-block" href="delete.jsp">Delete Reminder</a>
			<a type="button" class="btn btn-outline-secondary btn-block" href="#">Enable Reminder</a>
			<a type="button" class="btn btn-outline-secondary btn-block" href="viewReminder.jsp">View Reminder</a>
		</div>	
			
	
		<div class="my-5">
			<a type="submit" class="btn btn-info px-5" href="logoutJsp.jsp">Logout</a>	
		</div>
	</div>
	
<script>
	var dt = new Date();
	document.getElementById('date-time').innerHTML=dt;
</script>
</body>
</html>