<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import = "java.sql.*" %>

<%
	
		if(request.getParameter("submit") != null)
		{
			String id = request.getParameter("id");
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
				
				
				String q = "update setreminders set setdate = ?, subject=?, description=?, email=?, contactno=?, smsno=?, recurday=? where rid=?";
				PreparedStatement pst = con.prepareStatement(q);
				pst.setString(1, setdate);
				pst.setString(2, subject);
				pst.setString(3, description);
				pst.setString(4, email);
				pst.setString(5, contactno);
				pst.setString(6, smsno);
				pst.setString(7, recurday);
				pst.setString(8, id);
				
				pst.executeUpdate();
	%>
	
	<script>
		alert("record updated");
	</script>
	
	<%
		}
	%>
    
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
		<h2 class="m-5 text-success">Successfully Modify</h2>
		<h4 class="m-5">Go Back Home</h4>
		<a type="submit" class="btn btn-info mx-6 px-5" href="home.jsp">Back</a>	
	</div>
	
</body>
</html>