<%-- 
    Document   : clerk
    Created on : Aug 30, 2017, 1:02:52 AM
    Author     : sawar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
      <link rel="stylesheet" href="css/clerkcss.css">
      <style>
          body
          {
              color: black;
              margin: 25px;
              padding: 20px;
          }
          a.link
          {
              color: red;
              display: block;
              float: right;
              padding: 10px;
          }
      </style>
  
</head>

<body>

    <%
        String cid=request.getParameter("username");
        %>

        <a href="logout.jsp" class="link">LOGOUT</a>         
        <a href="viewclerk.jsp" class="link">VIEW ACCOUNT</a>        

        <br>

        <a href="#0" class="cd-popup-trigger">STUDENTS INFO</a>

<div class="cd-popup" role="alert">
	<div class="cd-popup-container">
		<ul class="cd-buttons">
			<li><a href="beforebarcodescan.jsp">SCAN BARCODE</a></li>
			<li><a href="registration.jsp">REGISTRATION</a></li>
		</ul>
		<a href="#0" class="cd-popup-close img-replace">Close</a>
	</div> <!-- cd-popup-container -->
</div> <!-- cd-popup -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/clerkjs.js"></script>
    
</body>
</html>