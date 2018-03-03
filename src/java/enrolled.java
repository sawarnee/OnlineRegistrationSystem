import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize = 5*1024*1024)

public class enrolled extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
        RequestDispatcher disp = request.getRequestDispatcher("/generatebarcode");
        
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

            
            Part tenthmarksheet=request.getPart("10marksheet");
            Part twelwthmarksheet=request.getPart("12marksheet");
            Part gradmarksheet=request.getPart("gradmarksheet");
            
            InputStream is1=null,is2=null,is3=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
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
                
                out.println("<h1>RECORD INSERTED SUCCESSFULLY</h1>");
                HttpSession session = request.getSession();
                session.setAttribute("id", email);
                session.setAttribute("name", fname+" "+lname);
                disp.include(request, response);
                
            }
            catch(Exception e)
            {
                out.println("error : "+e);
            }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(enrolled.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(enrolled.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
