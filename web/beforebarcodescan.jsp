<%-- 
    Document   : lostpassword
    Created on : Sep 9, 2017, 12:23:38 AM
    Author     : sawar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Example 2</title>
    <script type="text/javascript">
        function show()
        {
            if(document.getElementById("email").value=="")
            {
                alert("PLEASE ENTER THE DETAILS FIRST");
                return false;
            }
        }
    </script>
    <style type="text/css">
        body
        {
            background-color: #e6ffff;
        }
        table
        {
            text-align: center;
            padding: 50px;
            /*border-style: solid;*/
        }
        tr
        {
            height: 35px;
        }
        fieldset
        {
            width: 0px;
            background-color: #ffffe6;
        }
    </style>
</head>
<body>
<center>
    <br><br><br><br><br><br><br><br><br>
    <form action="barcodescan.jsp">
        <fieldset>
            <legend>VIEW INFORMATION</legend>
    <table>
        <tr>
            <td>Enter the email address of the student <br><br> OR <br><br> Scan the QR Code</td>
        </tr>
        <tr>
            <td><br><br><input type="text" name="email" id="email"></td>
        </tr>
        <tr></tr>
        <tr>
            <td><input type="submit" value="FETCH DETAILS" onclick="return show();"></td>
        </tr>
    </table>
        </fieldset>
    </form>
</center>
</body>
</html>