<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Set Reminder</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<section class="my-5">
	<div class="py-5">
		<h3 class="text-center">Set Reminder</h3>
	</div>
	<div class="container w-50 m-auto">
	  <form action="reminderJsp.jsp" method="POST">
		<div class="form-group">
		  <label for="setdate">Set a Date</label>
		  <input type="date" class="form-control" placeholder="Set a Date" name="setdate" required >
		</div>
		<div class="form-group">
			<label for="subject">Subject</label><br>

			<select name="subject" class="selectpicker">
			  <option value="options">option</option>
			  <option value="options1">option1</option>
			  <option value="options2">option3</option>
			  <option value="options3">option4</option>
			</select>
        </div>
		<div class="form-group">
				<label>Add Description</label>
				<textarea class="form-control" name="description" required>
				</textarea>
		</div>
		<div class="form-group">
		  <label for="email">Email id</label>
		  <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
        </div>
		<div class="form-group">
		  <label for="mobileno">Contact number</label>
		  <input type="number" class="form-control" id="contactno" placeholder="Enter contect number" name="contactno" required>
		</div>
		<div class="form-group">
		  <label for="smsno">SMS number</label>
		  <input type="number" class="form-control" id="smsno" placeholder="Enter SMS number" name="smsno" required>
		</div>
		<label for="recurTonext">Recur for Next</label>
		<div class="form-group">
			<input type="checkbox"name="recurday" value="7day">
			<label> 7 day</label>
			<input type="checkbox" name="recurday" value="5day">
			<label> 5 day</label>
			<input type="checkbox" name="recurday" value="3day">
			<label> 3 day</label>
			<input type="checkbox" name="recurday" value="2day">
			<label> 2 day</label>
		</div>
	
		<a type="submit" class="btn btn-danger mx-6" href="home.jsp">Back</a>
		<button type="submit" class="btn btn-primary" name = "submit" id="submit">Confirm</button>
		
	  </form>
	</div>
</section>



</body>
</html>
