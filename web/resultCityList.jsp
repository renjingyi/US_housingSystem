<%-- 
    Document   : result
    Created on : 2018-4-1, 19:07:25
    Author     : srx
P   PS          :搜索结果返回给这个页面
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*,bean.Location" %>
<%@page language="java" import="java.util.*,bean.RtnInfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Result Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">       
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {font-family: "Lato", sans-serif}



body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", Arial, Helvetica, sans-serif}
h1 { text-align: center; text-decoration: underline}   -->

<!-- make table scrollable -->
#tableresult{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#tableresult td, #tableresult th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}
#tableresult tr:nth-child(even){background-color: #f2f2f2;}
#tableresult tr:hover {background-color: #ddd;}
#tableresult th {
    background-color: #D3D3D3;
}

#map {
    height: 400px;
    align: center;
}
</style>

</head>

<body>
<!-- Header -->
<header> 
  <img class="w3-image" src="image/bridge_banner_small.PNG" alt="bridge2" style="width:100%" > 
</header>

<!-- Page content -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide">RESULTS</h2>
 <!--   <p class="w3-opacity"><i>Here is our recommendations.</i></p> -->
   
    <%ArrayList rtnlist=(ArrayList)request.getAttribute("rtnlist");
    ArrayList<Double> lat = new ArrayList<Double>();
     ArrayList<Double> lon = new ArrayList<Double>();
    %>
    
    <div style="width:100%; height:390px; overflow:auto;">
            <table id="tableresult" align="center" style="width:100%">               
                <thead>
                    <tr>
                        <th> City </th>
                        <th> Zip Code </th>
                        <th> Latitude </th>
                        <th> Longitude</th>
                        <th> Area of Water</th>
                        <th> Area of Land  </th>
                        <th> Rental Price </th>
                        <th> Expected Income </th>
                        
                    </tr>
                </thead>               
                <tbody>
                    <%for(int i=0;i<rtnlist.size();i++){
                    RtnInfo lc=(RtnInfo)rtnlist.get(i);
                      lat.add(lc.getLat());
                    lon.add(lc.getLon());%>
                    <tr>
                        <td><%=lc.getCity()%></td>
                        <td><%=lc.getZip_Code()%></td>
                        <td><%=lc.getLat()%></td>
                        <td><%=lc.getLon()%></td>
                        <td><%=lc.getAWater()%></td>
                        <td><%=lc.getALand()%></td>
                        <td><%=lc.getRent()%></td>
                        <td><%=lc.getIncome()%></td>
                    </tr>   
         <% 
        } %>
                </tbody> 
            </table>
    </div>
  
    <div class="w3-container w3-content w3-padding-64" style="width: 100%">
      <h2 class="w3-wide w3-center">SHOW RESULTS IN MAP</h2>
<!--     <p class="w3-opacity w3-center"><i>Show Results in Map!</i></p><br>   -->
    <div id="map">
        <script> 
            function initMap() {          
            var uluru = {lat: <%=lat.get(0) %>, lng: <%=lon.get(0) %>};
            var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 4,
            center: uluru
            });
            // window.eqfeed_callback = function() {
               <% for (int i = 0; i < lat.size(); i++) {%>
            // var coords = results.features[i].geometry.coordinates;
            var latLng = new google.maps.LatLng(<%=lat.get(i) %>,<%=lon.get(i) %>);
            var marker = new google.maps.Marker({
            position: latLng,
            map: map
          });
      //  }
            <%}%> 
             }
        </script>
        <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAbxXvht0oaz5lLS4IfjQ-1JZSK_9lmaBk&callback=initMap">
        </script>
    </div> 
    </div>
    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">        
        <button  class="w3-button w3-block w3-black" ><a href="normalSearch.jsp" >Back to Home</a></button>
    </div>
  </div>
</body>
</html>
