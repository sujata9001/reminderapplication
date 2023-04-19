<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Reminder</title>

<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link style="stylesheet" href="css/style-login.css">
</head>
<body>
<section class="my-4">
	<div class="py-5">
		<h3 class="text-center">Modify Reminder</h3>
	</div>
	<div class="container">          
	  <table class="table table-dark table-striped">
	    <thead>
	      <tr>
			<th>Date</th>
			<th>Subject</th>
			<th>Description</th>
			<th>Email ID</th>
			<th>Contact No</th>
			<th>SMS NO</th>
			<th>Recur for Next</th>
	      </tr>
	    </thead>
		
		<%
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reminder","root","");
		String sql = "select * from setreminders";
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		
		while(rs.next())
		{
			String id = rs.getString("rid");
		
		%>
		
	    <tbody>
	      <tr>
	        <td><%=rs.getString("setdate") %></td>
			<td><%=rs.getString("subject") %></td>
			<td><%=rs.getString("description") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("contactno") %></td>
			<td><%=rs.getString("smsno") %></td>
			<td><%=rs.getString("recurday") %></td>
			<td><a href="modifyJsp.jsp?id=<%=id%>" class="text-warning">Modify</a></td>
	      </tr>
		   
		 <%
			}
		 %>
	    </tbody>
	  </table>
	
		<div align="center" class="my-5">
			<a type="submit" class="btn btn-info px-5" href="home.jsp">Back</a>	
		</div>
	</div>
</section>
</body>
</html>