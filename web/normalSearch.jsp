<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="SQLconnect.JDBCTest" %>
<%@ page import = "java.util.*" %>
<%@ page import = "bean.Location.*" %>
<%@page language="java" import="java.util.*,bean.Location" %>


<!DOCTYPE html>
<html>
<title>Dreaming House Home Page</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="#ABOUT US" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT US</a>
    <a href="#STATISTICS" class="w3-bar-item w3-button w3-padding-large w3-hide-small">STATISTICS</a>
    <a href="#SEARCH" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SEARCH</a>
    
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#ABOUT US" class="w3-bar-item w3-button w3-padding-large">ABOUT US</a>
  <a href="#STATISTICS" class="w3-bar-item w3-button w3-padding-large">STATISTICS</a>
  <a href="#SEARCH" class="w3-bar-item w3-button w3-padding-large">SEARCH</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="image/bridge_banner.jpg" style="width:100%; height:600px">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h1>Welcome to America !</h1>
      <p><b>Best House Rental Recommendation System.</b></p>   
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="image/city_banner.jpg" style="width:100%; height:600px">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h1>Welcome to America !</h1>
      <p><b>Best House Rental Recommendation System.</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="image/evening_banner.jpg" style="width:100%; height:600px">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h1>Welcome to America !</h1>
      <p><b> The Best House Rental Recommendation System.</b></p>    
    </div>
  </div>

  <!-- ABOUT US Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="ABOUT US">
    <h2 class="w3-wide">ABOUT US</h2>
    <p class="w3-opacity"><i>We are the Best.</i></p> 
    <p class="w3-justify">Income is a vital element to consider when determining the socioeconomic features of a given geographic location. Particularly, when income is combined with the gross rent of its related household, many specific features can be estimated, for example, the local living standard. This system provides users some recommendations about the suitable places to live based on their preferences so that they will have better choices and have a more qualified life. In addition, the fuzzy query is realized by applying the query relaxation.
</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
   <!--     <p>Name</p> -->
        <img src="image/house1.jpg" class="w3-round w3-margin-bottom" alt="House1" style="width:95%">
      </div>
      <div class="w3-third">
    <!--    <p>Name</p> -->
        <img src="image/house2.jpg" class="w3-round w3-margin-bottom" alt="House2" style="width:95%">
      </div>
      <div class="w3-third">
    <!--    <p>Name</p> -->
        <img src="image/house3.jpg" class="w3-round" alt="House3" style="width:95%">
      </div>
    </div>
  </div>

  <!-- The STATISTICS -->
  <div class="w3-black" id="STATISTICS">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">STATISTICS</h2>
     <p class="w3-opacity w3-center"><i>Have a general view about America!</i></p><br>  
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
            <p><b>Income Map</b></p>
          <img src="image/income_map1.PNG" alt="New York" style="width:100%" class="w3-hover-opacity">

        </div>
        <div class="w3-half w3-margin-bottom">
            <p><b>Rent Map</b></p>
          <img src="image/rent_map1.PNG" alt="Paris" style="width:100%" class="w3-hover-opacity">
        </div>
        <div class="w3-half w3-margin-bottom">
            <p><b>Income Std. Dev.</b></p>
          <img src="image/income_stdev.png" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
        </div>
        <div class="w3-half w3-margin-bottom">
          <p><b>Income v.s Rent</b></p>
          <img src="image/income_rent.png" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
        </div>        
      </div>
    </div>
  </div>

  <!-- The SEARCH Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="SEARCH">
    <h2 class="w3-wide w3-center">SEARCH</h2>
    <p class="w3-opacity w3-center"><i>Find Your Dreaming House!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="container" id="search">
                
                <!-- put the form section in this part -->   
                <form id="f1"  action="locationSearch" method="post" name="searchContext">
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-credit-card"></i> Expected Minimum Income (US$/Year) </label>
                        <select class="w3-input w3-border" id = "expectedIncome" name = "Expected_Income" >
                            <option value="null"> --- Please Select --- </option>
                            <option value="0"> 0 </option>
                            <option value="50000"> 50000 </option>
                            <option value="100000"> 100000 </option>
                            <option value="150000"> 150000 </option>
                            <option value="200000"> 200000 </option>
                            <option value="250000"> 250000 </option>
                        </select>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-money"></i> Expected Minimum Rental Price (US$/Month)</label>
                        <select class="w3-input w3-border" id = "expectedPrice" name = "Expected_Price" >
                            <option value="null"> --- Please Select --- </option>
                        
                            <option value="0"> 0 </option>
                            <option value="300"> 300 </option>
                            <option value="600"> 600 </option>
                            <option value="900"> 900 </option>
                            <option value="1200"> 1200 </option>
                            <option value="1500"> 1500 </option>
                            <option value="1800"> 1800 </option>
                            <option value="2100"> 2100 </option>
                            <option value="2400"> 2400 </option>
                            <option value="2700"> 2700 </option>
                            <option value="3000"> 3000 </option>
                            <option value="4000"> 4000 </option>
                        </select>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-flag"></i> State Name </label>
                        <select class="w3-input w3-border" id = "stateName" name = "State_Name">
                            <option value="null"> --- Empty --- </option>
                            <option value="Alabama">Alabama</option>
                            <option value="Alaska">Alaska</option>
                            <option value="Arizona">Arizona</option>
                            <option value="Arkansas">Arkansas</option>
                            <option value="California">California</option>
                            <option value="Colorado">Colorado</option>
                            <option value="Connecticut">Connecticut</option>
                            <option value="Delaware">Delaware</option>
                            <option value="District of Columbia">District of Columbia</option>
                            <option value="Florida">Florida</option>
                            <option value="Georgia">Georgia</option>
                            <option value="Hawaii">Hawaii</option>
                            <option value="Idaho">Idaho</option>
                            <option value="Illinois">Illinois</option>
                            <option value="Indiana">Indiana</option>
                            <option value="Iowa">Iowa</option>
                            <option value="Kansas">Kansas</option>
                            <option value="Kentucky">Kentucky</option>
                            <option value="Louisiana">Louisiana</option>
                            <option value="Maine">Maine</option>
                            <option value="Maryland">Maryland</option>
                            <option value="Massachusetts">Massachusetts</option>
                            <option value="Michigan">Michigan</option>
                            <option value="Minnesota">Minnesota</option>
                            <option value="Mississippi">Mississippi</option>
                            <option value="Missouri">Missouri</option>
                            <option value="Montana">Montana</option>
                            <option value="Nebraska">Nebraska</option>
                            <option value="Nevada">Nevada</option>
                            <option value="New Hampshire">New Hampshire</option>
                            <option value="New Jersey">New Jersey</option>
                            <option value="New Mexico">New Mexico</option>
                            <option value="New York">New York</option>
                            <option value="North Carolina">North Carolina</option>
                            <option value="North Dakota">North Dakota</option>
                            <option value="Ohio">Ohio</option>
                            <option value="Oklahoma">Oklahoma</option>
                            <option value="Oregon">Oregon</option>
                            <option value="Pennsylvania">Pennsylvania</option>
                            <option value="Rhode Island">Rhode Island</option>
                            <option value="South Carolina">South Carolina</option>
                            <option value="South Dakota">South Dakota</option>
                            <option value="Tennessee">Tennessee</option>
                            <option value="Texas">Texas</option>
                            <option value="Utah">Utah</option>
                            <option value="Vermont">Vermont</option>
                            <option value="Virginia">Virginia</option>
                            <option value="Washington">Washington</option>
                            <option value="West Virginia">West Virginia</option>
                            <option value="Wisconsin">Wisconsin</option>
                            <option value="Wyoming">Wyoming</option>
                            <option value="Puerto Rico">Puerto Rico</option>

                        </select>
                    </div>
     
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-heart"></i> Preference </label>
                        <select class="w3-input w3-border" id = "preference" name = "Preference" >
                            
                            <option value="Coast"> Coast </option>
                            <option value="Inland"> Inland </option>
                        </select>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-search"></i> Search</label>
                        <button  class="w3-button w3-block w3-black">Search</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-search"></i> Relax Search</label>
                        <button  class="w3-button w3-block w3-black" onclick="del();">Relax Search</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-refresh"></i> Reset</label>
                        <input type="reset" class="w3-button w3-block w3-black" value="Reset"/>
                    </div>
                </form>
             

            <script type="text/javascript">
                function del(){
                document.forms.f1.action = "locationRelaxSearch";
                document.forms.f1.submit();
                }
            </script>
           <!-- End page content -->
        </div>        

    </div>
  </div>
  
<!-- End Page Content -->
</div>
    <div>   
        <img src="image/bridge2.PNG" alt="bridge" style="width:100%; ">       
    </div>
<script>
function myMap() {
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
    <footer class="w3-padding-32 w3-black w3-center ">
        <div class="w3-xlarge w3-padding-16">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
        </div>
        <p>Powered by Yifang LIU, Ruoxi SHI, Jingyi REN</p>
     </footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
