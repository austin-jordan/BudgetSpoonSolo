 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<link href="${pageContext.request.contextPath}/css/sign-up.css" type = "text/css" rel = "stylesheet" />

 
</head>

<body >
  
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
    <form id = "Signup" method = "post" action="Signupsuccess" onSubmit ="alert('Restaurant Successfully Registered');" >
    	<div class = "sign-up">
    	<div class="title">
  		  <h2>New Restaurant Sign Up</h2>
  		</div>
         <div class = "row" id = "name">
          <input class = "textbox" type="text" name="name" placeholder = "Restaurant Name" required/>
          <input class = "textbox" id = "second" type="password" name="password" placeholder = "Password" required/>
        </div>
        <div class = "row">
           <input class = "textbox" type="text" name="streetAddress" placeholder = "Street Address" required/>
            <input class = "textbox" type="text" id = "second" name="cityAddress" placeholder = "City" required/>
        </div>
        <div class = "row">
        
               <select id ="states" name ="stateAddress" required>
               <option selected disabled>State</option>
                <option value="AL">AL</option>
               	<option value="AK">AK</option>
               	<option value="AZ">AZ</option>
               	<option value="AR">AR</option>
               	<option value="CA">CA</option>
               	<option value="CO">CO</option>
               	<option value="CT">CT</option>
               	<option value="DE">DE</option>
               	<option value="DC">DC</option>
               	<option value="FL">FL</option>
               	<option value="GA">GA</option>
               	<option value="HI">HI</option>
               	<option value="ID">ID</option>
               	<option value="IL">IL</option>
               	<option value="IN">IN</option>
               	<option value="IA">IA</option>
               	<option value="KS">KS</option>
               	<option value="KY">KY</option>
               	<option value="LA">LA</option>
               	<option value="ME">ME</option>
               	<option value="MD">MD</option>
               	<option value="MA">MA</option>
               	<option value="MI">MI</option>
               	<option value="MN">MN</option>
               	<option value="MS">MS</option>
               	<option value="MO">MO</option>
               	<option value="MT">MT</option>
               	<option value="NE">NE</option>
               	<option value="NV">NV</option>
               	<option value="NH">NH</option>
               	<option value="NJ">NJ</option>
               	<option value="NM">NM</option>
               	<option value="NY">NY</option>
               	<option value="NC">NC</option>
               	<option value="ND">ND</option>
               	<option value="OH">OH</option>
               	<option value="OK">OK</option>
               	<option value="OR">OR</option>
               	<option value="PA">PA</option>
               	<option value="RI">RI</option>
               	<option value="SC">SC</option>
               	<option value="SD">SD</option>
               	<option value="TN">TN</option>
               	<option value="TX">TX</option>
               	<option value="UT">UT</option>
               	<option value="VT">VT</option>
               	<option value="VA">VA</option>
               	<option value="WA">WA</option>
               	<option value="WV">WV</option>
               	<option value="WI">WI</option>
               	<option value="WY">WY</option>
</select>

            <input class = "textbox" id = "zip" type="text" name="zipcodeAddress" placeholder = "Zip Code" required/>
          </div>
        

          <div class="row">
            <input class = "textbox" type="email" name="emailAddress" placeholder = "Email" />
            <input class = "textbox" id = "second" type="url" name="website" placeholder = "Website" />
          </div>

        <div class = "row">
             <input class = "textbox" type="text" name="cuisine" placeholder = "Cuisine">
        </div>
		<h4>Average Prices</h4>
		<div class="row">
             <input class = "textbox" id = "prices" type="number" name="breakfast_price" maxlength=5 step="0.1" placeholder = "Breakfast">
             <input class = "textbox" id = "prices" type="number" name="lunch_price" maxlength=5 step="0.01" placeholder = "Lunch">
             <input class = "textbox" id = "prices" type="number" name="dinner_price" maxlength=5 step="0.01" placeholder = "Dinner" >
        </div>
      <div class ="row">
          <div id = "button">
            <input class="submit" id="submit" name="submit" type="submit" value="Submit" >
          </div>
      </div>
        </div>
        </form>
        </div>
        </div>


  <script type = "text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <script src="jquery-ui.js"></script>
  <script type = "text/javascript" src="${pageContext.request.contextPath}script.js"></script>
  <script type = "text/javascript" src="${pageContext.request.contextPath}/js/validation.js"></script>



</body>
</html>
