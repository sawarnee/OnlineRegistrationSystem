import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registernewoperator extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String id=request.getParameter("id");
        String pwd=request.getParameter("password");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        Long phone=Long.parseLong(request.getParameter("phone"));
        String address=request.getParameter("address");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
            PreparedStatement pst=con.prepareStatement("insert into clerktable values (?,?,?,?,?,?)");
            
            pst.setString(1, id);
            pst.setString(2, pwd);
            pst.setString(3, name);
            pst.setString(4, email);
            pst.setLong(5, phone);
            pst.setString(6, address);
            
            pst.executeUpdate();
            con.close();
            pst.close();
            
            out.println("<center><h1>RECORD INSERTED SUCCESSFULLY</h1></center>");
            
        }
        catch(Exception e)
        {
            out.println("<center><h1>Error : "+e+"</h1></center>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
