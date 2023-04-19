<%@page import = "java.sql.*" %>

<%
	
	String id = request.getParameter("id");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reminder?useSSL=false","root","");
	
	
	String sql = "delete from setreminders where rid = ?";
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, id);
	
	pst.executeUpdate();
%>
	
<script>
	alert("record updated");
</script>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Reminder</title>
</head>
<body>

	<div align="center">
		<h4 class="m-5">Go Back Home</h4>
		<a type="submit" class="btn btn-info mx-6 px-5" href="home.jsp">Back</a>	
	</div>
	
</body>
</html>