<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

<!--   <div class = "header-banner">
  </div>
 -->
 	<div class = "form">
    <div class="container">
    <form id = "Signup" method = "post" action="userLogin.html">
    	<div class = "sign-up">
    	<div class = "title">
    		<h2>Login</h2>
    	</div>
    		<div class = "row">
 					<input class = "textbox" type="text" name="username" required placeholder = "username"/>
 			</div>
 			<div class = "row">
 					<input class = "textbox" type="password" name="password" required placeholder = "password"/>
			</div>
			<div class = "row">
          <div id = "button">
						<input class = "submit" type="submit" value="Login" >
						<input class = "submit" type="reset" value="Reset" >
          </div>
        </div>
          <p id="errorMessage">${msg }</p>
        </div>
        </form>
        </div>
        </div>

  <script type = "text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <script src="jquery-ui.js"></script>
  <script type = "text/javascript" src="script.js"></script>

</body>
</html>

  <script type = "text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <script src="jquery-ui.js"></script>
  <script type = "text/javascript" src="script.js"></script>
  <script type = "text/javascript" src="${pageContext.request.contextPath}/js/validation.js"></script>



</body>
</html>

</body>
</html>
