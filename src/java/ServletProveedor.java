import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletProveedor", urlPatterns = {"/ServletProveedor"})
public class ServletProveedor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nit = request.getParameter("nit");
        
        request.setAttribute("accion", "CONSULTA");
        request.setAttribute("nit", nit);
        
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nit = request.getParameter("nit");
        String razonSocial = request.getParameter("razonSocial");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String ciudad = request.getParameter("ciudad");
        
        request.setAttribute("accion", "REGISTRO");
        request.setAttribute("nit", nit);
        request.setAttribute("razonSocial", razonSocial);
        request.setAttribute("telefono", telefono);
        request.setAttribute("correo", correo);
        request.setAttribute("ciudad", ciudad);
        
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet de Proveedores - TheProjectSolutions";
    }
}