<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create a Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/css/account.css" type = "text/css" rel = "stylesheet" />
</head>
<body>
  <header>
    <nav>
      <div class = "comp pull-left" id = "logo">
        <a href = "index.html" style = "text-decoration:none;" id = "BudgetSpoon">BudgetSpoon</a><br />
      </div>
      <c:if test="${username == null}">
      <div class = "comp pull-right">
        <a href = "LoginForm.html" style = "text-decoration:none;">Log In</a>
      </div>
      <div class = "comp pull-right">
        <a href = "userSignup.html" style = "text-decoration:none;">Sign Up</a>
      </div>
      </c:if>
      <c:if test="${username != null}">
      <div class = "comp pull-right">
        <a href = "userLogout.html" style = "text-decoration:none;">Log Out</a>
      </div>
      <div class = "comp pull-right">
        <a href = "userFavorites.html" style = "text-decoration:none;">Favorites</a>
      </div>
      </c:if>
    </nav>
  </header>

<div class = "form">
<div class="container">
<form id = "Signup" method = "post" action="AccountSuccess" onSubmit ="alert('User Profile Successfully Created');">
<div id = "title">
	<h2>Create a User Profile</h2>
	</div>
  <div class = "sign-up">
     <div class = "row" id = "name">
      <input class = "textbox" type="text" name="username" required placeholder = "Username"/>
     </div>
     <div class = "row">
      <input class = "textbox" type="password" name="password" required placeholder = "Password"/>
    </div>
      <div class="row">
        <input class = "textbox" type="email" name="emailAddress" placeholder = "Email"/>
      </div>
	<div class = "row">
      <div id = "button">
        <input class="submit" id="submit" name="submit" type="submit" value="Submit">
      </div>
    </div>
    <div class = "row" id = "buttonrow">
      <a href = "restaurantSignup.html">Click here to add a restaurant profile</a>
    </div>
    </div>
    </form>
    </div>
    </div>

<script type = "text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="jquery-ui.js"></script>
<script type = "text/javascript" src="${pageContext.request.contextPath}/js/validation.js"></script>
</body>
</html>