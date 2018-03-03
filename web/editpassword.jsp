<%-- 
    Document   : editpassword
    Created on : Nov 5, 2017, 7:16:16 PM
    Author     : sawar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body
        {
            background-color: rgb(226,226,226);
        }
    </style>
    <script>
        function show()
        {
            if(document.getElementById("t1").value == "")
            {
                alert("Please enter the password!!!");
                return false;
            }
            else
            {
                return true;
            }
        }
    </script>
    <body>
    <center>
        <%
            String id=request.getQueryString();
            %>
        <h1>Enter new Password</h1>
        <form action="editpassword?<%=id%>" method="POST">
            <input type="text" name="t1" id="t1">
            <br><br>
            <input type="submit" value="CHANGE PASSWORD" onclick="return show();">
        </form>
    </center>
    </body>
</html>
