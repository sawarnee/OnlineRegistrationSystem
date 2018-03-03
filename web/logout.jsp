<%-- 
    Document   : logout
    Created on : Sep 6, 2017, 1:41:03 PM
    Author     : sawar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.html");
            
            response.setHeader("Cache-control", "no-cache");
            response.setHeader("Cache-Control", "private,no-store,must-revalidate");
            response.setDateHeader("Expires", -1);
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            
            %>
    </body>
</html>