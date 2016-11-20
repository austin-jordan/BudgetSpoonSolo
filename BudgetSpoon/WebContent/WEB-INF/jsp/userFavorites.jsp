<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE>
<html>

<head>
  <meta charset="utf-8">
  <title>BudgetSpoon</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
  <link href="css/jquery-ui.min.css" rel="stylesheet">
  <link href="css/resultspage.css" type="text/css" rel="stylesheet" />
 <!--  The Google Maps API is a JavaScript library. It can be added to a web page with a <script> tag:-->
 
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDB8NwjBc0moypQd_PXWddjggTAS3Tbb_k"
  type="text/javascript"></script>
 
</head>

<body>
<script>
        var geocoder;
          var map;
          var myData=[];
        
          var contentString=[];
             function initialize() {
        	  console.log("init")
            geocoder = new google.maps.Geocoder();
            var latlng = new google.maps.LatLng(42.331429,-83.045753);
            var mapOptions = {
              zoom:15,
              center: latlng,
              mapTypeId: google.maps.MapTypeId.ROADMAP,
            }
            map = new google.maps.Map(document.getElementById("map"), mapOptions);
             
			for(var i =0; i<myData.length;i++){
			
				codeAddress(myData[i][0],myData[i][1],myData[i][2]);
            	
			}
             
           }
                   google.maps.event.addDomListener(window, "load", initialize);
             
                   function codeAddress(address,name,url) {
                	                 	   
                  		 geocoder.geocode( {'address': address}, function(results, status) {
                  	     if (status == google.maps.GeocoderStatus.OK) {
                  	        	    
                          map.setCenter(results[0].geometry.location);
                          
                         var infowindow = new google.maps.InfoWindow({
                        	 content:'<a href="' + url + '">' + name + '</a><br/>' + address
                    			
                    		   });
                         
                         
                          var marker = new google.maps.Marker({
                              map: map,
                              position: results[0].geometry.location,
                              title:name
                          });
                          
                      //    marker.setContent(contentString);
                          marker.addListener('click', function() {
                        	 
                        	    infowindow.open(map, marker);
                        	    
                        	  });
                          
                         } else {
                          alert("Geocode was not successful for the following reason: " + status);
                        }
                  	  	   });
                     }  
             
       </script>

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

  <div class = "header-banner">
    <h3>Your Personal Favorites</h3>
  </div>
  	
  	
    <section class = "search-results-container">
    	<div class = "row" id = "view">
    	<div class = "col-md-6" id = "results">
        <h3>${noFavMsg}</h3>
        <ol id = "search-list">
        <c:forEach items="${favRest}" var="restaurant">
          <li class = "search-result-li">
            <div class = "row">
              <div class = "col-md-6" id = "restaurant">
              <h3><a href = "${restaurant.getWebsite()}">${restaurant.getName()}</a></h3>
              <p>${restaurant.getCuisine()}</p>
              <p>${restaurant.getStreetAddress()}</p>
              <p>${restaurant.getCityAddress()}, ${restaurant.getStateAddress()}. ${restaurant.getZipcodeAddress()}</p>
               </div>
                     <script>
                     myData.push(["${restaurant.getStreetAddress()}"+","+"${restaurant.getCityAddress()}"+","+"${restaurant.getStateAddress()}"+","+"${restaurant.getZipcodeAddress()}","${restaurant.getName()}","${restaurant.getWebsite()}"]);
                                          
                    </script> 
            <div class = "col-md-6" id = "prices"> 
              <c:if test="${restaurant.getBreakfast_price() == 0.00}">
              	<p><c:out value="Breakfast Not Served" /></p>
              </c:if>
              <c:if test="${restaurant.getBreakfast_price() != 0.00}">
              	<p>Breakfast Price: <fmt:formatNumber type="currency" value="${restaurant.getBreakfast_price()}" minFractionDigits="2" maxFractionDigits="2"/></p>
              </c:if>
              <c:if test="${restaurant.getLunch_price() == 0.00}">
              	 <p><c:out value="Lunch Not Served" /></p>
              </c:if>
              <c:if test="${restaurant.getLunch_price() != 0.00}">
              	<p>Lunch Price: <fmt:formatNumber type="currency" value="${restaurant.getLunch_price()}" minFractionDigits="2" maxFractionDigits="2"/></p>
              </c:if>
              <c:if test="${restaurant.getDinner_price() == 0.00}">
              	 <p><c:out value="Dinner Not Served" /></p>
              </c:if>
              <c:if test="${restaurant.getDinner_price() != 0.00}">
              	<p>Dinner Price: <fmt:formatNumber type="currency" value="${restaurant.getDinner_price()}" minFractionDigits="2" maxFractionDigits="2"/></p>
              </c:if>
            </div>
            </div>
          </li>
          </c:forEach>
        </ol>
        </div>
        <div class="col-md-6" id  = "globe">
          	<div id="map" style="width: 100%; height: 100%;"></div>
     	</div>
              <script>
              
              </script>
        
        </div>
    </section>
</body>
</html>

<!--
${msg }
			<c:forEach items="${fList}" var="favorite">
              <p>${restaurant.getRestaurant_id()}</p>
            </c:forEach>

<h1>This page confirms that your Login Validation works.</h1><br><br>
<h2>Now go and Change where you want the user to be redirected to.</h2>
 -->