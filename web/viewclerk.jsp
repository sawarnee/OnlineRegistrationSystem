<%-- 
    Document   : viewclerk
    Created on : Sep 3, 2017, 12:06:58 PM
    Author     : sawar
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Account</title>
        <script>
            function fun()
            {
                alert("You are not allowed to edit the account. Please ask the admin for changing account settings.");
                return false;
            }
        </script>
        <style>
            body
            {
                background-color: rgb(226,226,226);
            }
            table
            {
                border-style: double;
                padding: 20px;
                margin: 50px;
                border-width: 10px;
            }
            tr
            {
                height: 35px;
            }
            h1
            {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <br><br><br>
        <h1>ACCOUNT DETAILS</h1>
        <%
//                String cid=request.getParameter("username");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
                PreparedStatement stmt=con.prepareStatement("select cid,name,email,phone,address from clerktable where cid=?");
                stmt.setString(1, session.getAttribute("username1").toString());
                ResultSet rs=stmt.executeQuery();
                rs.next();
                String cid=rs.getString(1);
                String name=rs.getString(2);
                String email=rs.getString(3);
                long phone=rs.getLong(4);
                String address=rs.getString(5);
                %>
    <center>
                <table border="1" cellspacing="2">
                    <tr>
                        <td>USERNAME</td>
                        <td> <%= cid %> </td>
                    </tr>
                    <tr>
                        <td>NAME</td>
                        <td> <%= name %> </td>
                    </tr>
                    <tr>
                        <td>EMAIL ID</td>
                        <td> <%= email %> </td>
                    </tr>
                    <tr>
                        <td>PHONE NO.</td>
                        <td> <%= phone %> </td>
                    </tr>
                    <tr>
                        <td>ADDRESS</td>
                        <td> <%= address %> </td>
                    </tr>
                </table>
                <a href="" class="link" onclick="return fun();">EDIT ACCOUNT</a>
    </center>
    </body>
</html>