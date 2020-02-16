<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="text/html; charset=UTF-8">
<title>Registration</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input {
	width: 100%;
	padding: 8px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h2 {
	color: #4CAF50;
}

button:hover {
	opacity: 0.8;
}

.container {
	padding: 16px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 2px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}

.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

</style>
</head>
<body>
	<g:form controller="registration" class="modal-content animate" action="save">
		<h2>
			<center>User Registration Form</center>
		</h2>
		<div class="container">
                    <label>First Name: </label>
                    <g:textField name="firstName" required="true"/><br/>
                    <label>Last Name: </label>
                    <g:textField name="lastName" required="true"/><br/>
                    <label>Email: </label>
                    <g:textField name="email" required="true"/><br/>
                    <label>Phone: </label>
                    <g:field type="number" name="phone" maxlength="11" required="true"/><br/>
                    <label>Date of Birth: </label><br/>
                    <g:datePicker name="dateOfBirth" precision="day" required="true"/><br/>
                    <label>Address: </label>
                    <g:textField name="address" required="true"/><br/>
                    <label>Password: </label>
                    <g:passwordField type="password" name="password" required="true"/><br/>
                    <g:actionSubmit value="Save"/>
		</div>
	</g:form>

</body>
</html>