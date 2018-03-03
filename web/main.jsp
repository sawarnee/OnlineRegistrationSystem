<%-- 
    Document   : main
    Created on : Sep 3, 2017, 2:21:55 AM
    Author     : sawar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        RequestDispatcher disp;

        session.setAttribute("username1", request.getParameter("username"));
        
        ServletContext context = request.getServletContext();
        context.setAttribute("a_username", "admin");
        context.setAttribute("a_password", "admin");

        try
        {
            String unm=request.getParameter("username");
            String pwd=request.getParameter("password");
            if(unm.equals(context.getAttribute("a_username")) && pwd.equals(context.getAttribute("a_password")))
            {
                response.sendRedirect("admin.html");
            }
            else
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
//                PreparedStatement stmt=con.prepareStatement("select password,name,email,phone,address from clerktable where cid=?");
                PreparedStatement stmt=con.prepareStatement("select password,name from clerktable where cid=?");
                stmt.setString(1, request.getParameter("username"));
                ResultSet rs=stmt.executeQuery();
                rs.next();
                String password=rs.getString(1);
                String name=rs.getString(2);
//                String email=rs.getString(3);
//                long phone=rs.getLong(4);
//                String address=rs.getString(5);
                
                if(pwd.equals(password))
                {
//                    out.println("<center>WELCOME : "+name+"</center>");
//                    disp=request.getRequestDispatcher("clerk.jsp");
//                    disp.include(request, response);
                    response.sendRedirect("clerk.html");
                }
                else
                {
                    out.println("<br><center><h1>wrong username or password</h1></center>");
                }
            }
        }
        catch(Exception e)
        {
            out.println("wrong username or password"+e);
        }

            %>
    </body>
</html>
