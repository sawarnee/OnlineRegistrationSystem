<%-- 
    Document   : operators.jsp
    Created on : Nov 5, 2017, 12:49:17 AM
    Author     : sawar
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>operators</title>
        <style>
            body
            {
                margin: 50px;
                background-color: rgb(226,226,226);
            }
            table
            {
                width: 100%;
                text-align: center;
            }
            tr
            {
                height: 30px;
            }
            .a_del
            {
                color: red;
            }
            .a_h
            {
                font-size: 30px;
                font-weight: bold;                
            }
        </style>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>S.NO.</th>
                <th>ID</th>
                <th>PASSWORD</th>
                <th>NAME</th>
                <th>EMAIL ID</th>
                <th>PHONE NO.</th>
                <th>ADDRESS</th>
                <th>EDIT PASSWORD</th>
                <th>DELETE OPERATOR</th>
            </tr>
        <%
                int index=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from clerktable");
                while(rs.next())
                {
                    String cid=rs.getString(1);
                    String pwd=rs.getString(2);
                    String name=rs.getString(3);
                    String email=rs.getString(4);
                    long phone=rs.getLong(5);
                    String address=rs.getString(6);
                    index++;
                    %>
                    
                    <tr>
                        <td><%= index%></td>
                        <td><%= cid%></td>
                        <td><%= pwd%></td>
                        <td><%= name%></td>
                        <td><%= email%></td>
                        <td><%= phone%></td>
                        <td><%= address%></td>
                        <td><a href="editpassword.jsp?<%=email%>" class="a_del">edit</a></td>
                        <td><a href="deleteoperator?<%=email%>" class="a_del">delete</a></td>
                    </tr>
                    
                    <%
                }
                
            %>
            <a href="newoperator.html" class="a_h">ADD NEW OPERATOR</a><br><br><br>
        </table>
    </body>
</html>
