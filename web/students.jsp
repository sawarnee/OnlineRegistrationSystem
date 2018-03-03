<%-- 
    Document   : operators.jsp
    Created on : Nov 5, 2017, 12:49:17 AM
    Author     : sawar
--%>

<%@page import="java.util.Date"%>
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
            .a_h
            {
                margin-left: 20%;
                font-size: 30px;
                font-weight: bold;
            }
            #a1
            {
                margin-left: 25%;
            }
            .a_del
            {
                color: red;
            }
        </style>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>S.NO.</th>
                <th>NAME</th>
                <th>DOB</th>
                <th>EMAIL</th>
                <th>PHONE</th>
                <th>GENDER</th>
                <th>ADDRESS</th>
                <th>CITY</th>
                <th>PINCODE</th>
                <th>STATE</th>
                <th>COUNTRY</th>
                <th>COURSE</th>
                <!--<th>EDIT</th>-->
                <th>DELETE</th>
            </tr>
        <%
                int index=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from enrollmenttable");
                while(rs.next())
                {
                    String name=rs.getString(1)+" "+rs.getString(2);
                    Date dob=rs.getDate(3);
                    String email=rs.getString(4);
                    long phone=rs.getLong(5);
                    String gender=rs.getString(6);
                    String address=rs.getString(7);
                    String city=rs.getString(8);
                    long pincode=rs.getLong(9);
                    String state=rs.getString(10);
                    String country=rs.getString(11);
                    String course=rs.getString(15);
                    index++;
                    %>
                    
                    <tr>
                        <td><%= index%></td>
                        <td><%= name%></td>
                        <td><%= dob%></td>
                        <td><%= email%></td>
                        <td><%= phone%></td>
                        <td><%= gender%></td>
                        <td><%= address%></td>
                        <td><%= city%></td>
                        <td><%= pincode%></td>
                        <td><%= state%></td>
                        <td><%= country%></td>
                        <td><%= course%></td>
                        <!--<td><a href="" class="a_del">edit</a></td>-->
                        <td><a href="deletestudent?<%=email%>" class="a_del">delete</a></td>
                    </tr>
                    
                    <%
                }
                
            %>
            <a href="registration.jsp" class="a_h">ADD NEW STUDENT</a>
            <a href="beforebarcodescan.jsp" id="a1" class="a_h">SCAN BARCODE</a>
            <br><br><br>
        </table>
    </body>
</html>
