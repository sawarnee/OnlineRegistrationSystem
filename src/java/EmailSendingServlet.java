import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailSendingServlet extends HttpServlet {

    private String host;
    private String port;
    private String user;
    private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                //response.setContentType("text/html;charset=UTF-8");

                String username = request.getParameter("unm");
                String email="";
		String subject = "Password Verification";
		String content = "";
                String name="";
                String password="";

        
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?kaka","kaka","kaka");
                PreparedStatement stmt=con.prepareStatement("select password,email,name from clerktable where cid=?");
                stmt.setString(1, username);
                ResultSet rs=stmt.executeQuery();
                rs.next();
                password=rs.getString(1);
                email=rs.getString(2);
                name=rs.getString(3);
                
            }
            catch(Exception e)
            {
            }

		String resultMessage = "";
                content="Hello "+name+". \nThe password for username "+username+" is : "+password+". \nFor changing your password, please contact admin.";

		try {
			EmailUtility.sendEmail(host, port, user, pass, email, subject,
					content);
			resultMessage = "The password has been send at your email successfully. Do not disclose your password with anyone. For changing your password, please contact admin.";
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "Error in sending email. Please check the username you have provided again. In case of loss of username, please contact admin.";
		} finally {
			request.setAttribute("Message", resultMessage);
			getServletContext().getRequestDispatcher("/Result.jsp").forward(
					request, response);
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
