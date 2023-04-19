<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link style="stylesheet" href="css/style-login.css">
    <title>Login</title>
    
  </head>
  <body>
  
  
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  		
  		
  <section class="my-4">
	<div class="py-5">
		<h3 class="text-center">Login Here</h3>
	</div>
	<div class="container w-50 m-auto">
	  <form action="login" method="POST">
		<div class="form-group">
		  <label for="email">Email id</label>
		  <input type="email" class="form-control" id="email" placeholder="Email" name="username" required>
		  <div class="invalid-feedback">Please enter your right email id.</div>
        </div>
        <div class="form-group">
		  <label for="upassword">Password</label>
		  <input type="password" class="form-control" id="upass" placeholder="******" name="password" required >
		  <div class="invalid-feedback">Please use letter and number</div>
		</div>
		
		
		<button type="submit" class="btn btn-success">Login</button>
		<a type="submit" class="btn btn-warning mx-6" href="register.jsp">Register</a>
	  </form>
	</div>
</section>


   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed")
	{
			swal("Login Failed", "Retry", "error");
			document.getElementById("status").value = "";
	}
</script>
  </body>
</html>