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
        function go()
        {
            if(document.getElementById("unm").value=="")
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
            height: 220px;
            width: 0px;
            background-color: #ffffe6;
        }
    </style>
</head>
<body>
<center>
    <br><br><br><br><br><br><br><br><br>
    <form action="EmailSendingServlet">
        <fieldset>
            <legend>PASSWORD RECOVERY</legend>
    <table>
        <tr>
            <td>USERNAME</td>
        </tr>
        <tr>
            <td><input type="text" name="unm" id="unm"></td>
        </tr>
        <tr></tr>
        <tr>
            <td><input type="submit" value="SEND PASSWORD" onclick="return go();"></td>
        </tr>
    </table>
        </fieldset>
    </form>
</center>
</body>
</html>