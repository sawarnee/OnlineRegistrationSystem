<%-- 
    Document   : barcodescan
    Created on : Aug 30, 2017, 1:46:29 AM
    Author     : sawar
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BARCODE SCAN</title>
    </head>
    <style>
        body
        {
            background-color: rgb(226,226,226);
        }
    </style>
    <body>
        <center>
            <h1>STUDENT'S INFORMATION</h1>
        <table border="1" width="25%" cellpadding="10">
        <%
            String id=request.getParameter("email");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
                PreparedStatement pst=con.prepareStatement("select * from ENROLLMENTTABLE where email=?");
                pst.setString(1, id);
                ResultSet rs=pst.executeQuery();
                
                while(rs.next())
                {
                    String fname=rs.getString(1);
                    String lname=rs.getString(2);
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
                    
                    %>
                        <tr>
                            <td>NAME</td>
                            <td><%= fname + " " + lname %></td>
                        </tr>
                        <tr>
                            <td>DATE OF BIRTH</td>
                            <td><%= dob %></td>
                        </tr>
                        <tr>
                            <td>EMAIL ID</td>
                            <td><%= email %></td>
                        </tr>
                        <tr>
                            <td>PHONE NO.</td>
                            <td><%= phone %></td>
                        </tr>
                        <tr>
                            <td>GENDER</td>
                            <td><%= gender %></td>
                        </tr>
                        <tr>
                            <td>ADDRESS</td>
                            <td><%= address %></td>
                        </tr>
                        <tr>
                            <td>CITY</td>
                            <td><%= city %></td>
                        </tr>
                        <tr>
                            <td>PIN CODE</td>
                            <td><%= pincode %></td>
                        </tr>
                        <tr>
                            <td>STATE</td>
                            <td><%= state %></td>
                        </tr>
                        <tr>
                            <td>ADDRESS</td>
                            <td><%= country %></td>
                        </tr>
                        <tr>
                            <td>COURSE</td>
                            <td><%= course %></td>
                        </tr>
                        <tr>
                            <td>TENTH MARKSHEET</td>
                            <td> <a href="retriveimage?<%=id%>"><img src='retriveimage?<%=id%>' width="500px" height="500px" /></a> </td>
                        </tr>
                        <tr>
                            <td>TWELFTH MARKSHEET</td>
                            <td> <a href="retriveimage?<%=id%>"><img src='retriveimage1?<%=id%>' width="500px" height="500px" /></a> </td>
                        </tr>
                        <tr>
                            <td>GRADUATION MARKSHEET</td>
                            <td> <a href="retriveimage?<%=id%>"><img src='retriveimage2?<%=id%>' width="500px" height="500px" /></a> </td>
                        </tr>
                        
                    </table>
                        
                    <%

                }
            }
            catch(Exception e)
            {
                out.print("error: "+e);
            }
            %>
        </center>>
    </body>
</html>
