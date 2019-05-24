<%-- 
    Document   : result
    Created on : 2018-4-1, 19:07:25
    Author     : srx
    PS          :ERROR页
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<title><s:text name="Error.message"/></title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato",  sans-serif}

h2 { text-align: center; }
            
</style>
</head>

<body>
        <!-- Header -->
        <header> 
            <img class="w3-image" src="image/bridge_banner_small.PNG" alt="bridge2" style="width:100%" > 
        </header>
        <!-- Page content -->
        <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
        <div class="w3-container w3-content w3-padding-64" style="width: 100%">
            <h2> ...... Sorry, we cannot find any results. </h2>                     
            <h2> Please try relax search. </h2>  
        </div>
    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">        
        <button  class="w3-button w3-block w3-black" ><a href="normalSearch.jsp" >Back to Home</a></button>
    </div>   
        </div>
            
</body>
</html>

