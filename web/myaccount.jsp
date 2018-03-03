<%-- 
    Document   : myaccount
    Created on : Nov 5, 2017, 2:15:05 AM
    Author     : sawar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
    </head>
    <style>
        body
        {
            background-color: rgb(226,226,226);
        }
        h2
        {
            float: left;
            margin-left: 25%;
            cursor: pointer;
            border-style: solid;
            background-color: cyan;
        }
    </style>
    <body>
    <center>
        <h1>Hello Admin</h1>
        <%
            ServletContext context = request.getServletContext();
            String unm=context.getAttribute("a_username").toString();
            String pwd=context.getAttribute("a_password").toString();
            %>
            <br><br>
            <h3>YOUR USERNAME IS : <%= unm%></h3>
            <h3>YOUR PASSWORD IS : <%= pwd%></h3>
            <br><br>
<!--            <h2 onclick="show1();">CHANGE USERNAME</h2>
            <h2 onclick="show2();">CHANGE PASSWORD</h2>-->
    </center>
<!--            <script>
                function show1()
                {
                    prompt("Enter new username");
                }
            </script>-->
            
    </body>
</html>
