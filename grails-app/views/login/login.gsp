<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="text/html; charset=UTF-8">
    <title>Log In</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
g:submitButton {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h1 {
	color: #4CAF50;
}

button:hover {
	opacity: 0.8;
}

.container {
	padding: 16px;
}

p {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 0px;
}

.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 2px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
        padding: 12px 20px;
}
</style>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <!--<li><g:link class="list" action="logout"><g:message code="Logout"/></g:link></li>-->
        </ul>
    </div>
	<h1>
		<center>User Login Form</center>
	</h1>
        <div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}" var="error" class="hasError">
                <ul class="errors" role="alert">
                    <g:eachError bean="${userInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
        </div>
        
	<g:form class="modal-content animate" action="authenticate">
            <div class="fieldcontain ${hasErrors (bean: userInstance, field: 'email', 'error')}">
                <label for="email"><b>Email</b></label> 
		<g:textField id="email" placeholder="Enter Email" name="email" value="${userInstance?.email}" required="true"/>
            </div>
            <div class="fieldcontain ${hasErrors (bean: userInstance, field: 'email', 'error')}">
                <label for="password"><b>Password</b></label>
		<g:field type="password" id="password" placeholder="Enter Password" name="password" value="${userInstance?.password}" required="true"/>
            </div>            
            <g:submitButton name="login" class="save" type="submit" id="submitBtn">Login</g:submitButton>
            <div class="container" style="background-color: #f1f1f1">
		<span class="psw">New user? <a href="/registration/registration">Sign Up</a></span>
            </div>
	</g:form>

</body>
</html>