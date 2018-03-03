<%-- 
    Document   : enrolled
    Created on : Aug 30, 2017, 1:44:22 PM
    Author     : sawar
--%>

<%@page import="javax.transaction.Transaction"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fname=request.getParameter("First_Name");
            
            String lname=request.getParameter("Last_Name");

            String date=request.getParameter("date1");
            Date dob=new SimpleDateFormat("yyyy-MM-dd").parse(date);
            
            String email=request.getParameter("Email_Id");
            
            long phone=Long.parseLong(request.getParameter("Mobile_Number"));
            
            char gender=request.getParameter("Gender").charAt(0);
            
            String address=request.getParameter("Address");
            
            String city=request.getParameter("City");
            
            long pincode=Long.parseLong(request.getParameter("Pin_Code"));
            
            String state=request.getParameter("State");

            String country=request.getParameter("Country");
            
            String course=request.getParameter("Course");


            
//            out.println(fname+" "+lname+" "+dob+" "+email+" "+phone+" "+gender+" "+address+" "+city+" "+pincode+" "+state+" "+country+" "+course);
            
            Part tenthmarksheet=request.getPart("10marksheet");
            Part twelwthmarksheet=request.getPart("12marksheet");
            Part gradmarksheet=request.getPart("gradmarksheet");
            
            
            InputStream is1=null,is2=null,is3=null;
            
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","oracle");
                PreparedStatement pst=con.prepareStatement("insert into ENROLLMENTTABLE values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                pst.setString(1, fname);
                pst.setString(2, lname);
                
                java.sql.Date d=new java.sql.Date(dob.getTime());
                pst.setDate(3, d);
                
                pst.setString(4, email);
                pst.setLong(5, phone);
                pst.setString(6, gender+"");
                pst.setString(7, address);
                pst.setString(8, city);
                pst.setLong(9, pincode);
                pst.setString(10, state);
                pst.setString(11, country);
                
                is1=tenthmarksheet.getInputStream();
                is2=twelwthmarksheet.getInputStream();
                is3=gradmarksheet.getInputStream();

                pst.setBlob(12, is1);
                pst.setBlob(13, is2);
                pst.setBlob(14, is3);
                
                pst.setString(15, course);
                
//                if(filepart.getContentType()!="image/png" /*|| filepart.getContentType()!="image/jpg" || filepart.getContentType()!="image/jpeg"*/)
//                {
//                    out.println("only png,jpg,jpeg files allowed");
//                    out.println("<br>"+filepart.getContentType());
//                }
//                else
//                {
//                    pst.executeUpdate();
//                    out.println("inserted successfully");
//                    con.close();
//                    pst.close();
//                }
                
                pst.executeUpdate();
                con.close();
                pst.close();
                
                %>
                    <h1>student enrolled successfully </h1>
                <%
                
            }
            catch(Exception e)
            {
                out.println("error : "+e);
            }
            
            %>
    </body>
</html>
