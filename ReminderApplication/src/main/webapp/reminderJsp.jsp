<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Reminder</title>

<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link style="stylesheet" href="css/style-login.css">
</head>
<body>
	<%
	
		if(request.getParameter("submit") != null)
		{
			
			String setdate = request.getParameter("setdate");
			String subject = request.getParameter("subject");
			String description = request.getParameter("description");
			String email = request.getParameter("email");
			String contactno = request.getParameter("contactno");
			String smsno = request.getParameter("smsno");
			String rday[] = request.getParameterValues("recurday");
			
			String recurday = "";
			if(request.getParameterValues("recurday") != null){
				for(int i=0; i<rday.length; i++)
				{
					recurday += rday[i] + " ";
				}
			}
			
			
			
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reminder?useSSL=false","root","");
				
				
				String q = "insert into setreminders(setdate, subject, description, email, contactno, smsno, recurday) values(?,?,?,?,?,?,?)";
				PreparedStatement pst = con.prepareStatement(q);
				pst.setString(1, setdate);
				pst.setString(2, subject);
				pst.setString(3, description);
				pst.setString(4, email);
				pst.setString(5, contactno);
				pst.setString(6, smsno);
				pst.setString(7, recurday);
				
				pst.executeUpdate();
	%>
	
	<script>
		alert("record added");
	</script>
	
	<%
		}
	%>
	<div align="center">
		
		<h4 class="m-5">Go Back Home</h4>
		<a type="submit" class="btn btn-info mx-6 px-5" href="home.jsp">Back</a>	
	</div>
</body>
</html>