import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean wasLoginError = request.getParameter("error") != null;
        request.setAttribute("error", wasLoginError);
        request.getRequestDispatcher(" /login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String username = request.getParameter("username");
            String password = request.getParameter("password");



        if(request.getMethod().equals("POST")){
            if(username.equals("admin") && password.equals("password")) {
                response.sendRedirect("/profile.jsp");
            }else {
                response.sendRedirect("/login&error=true");
            }
        }
    }
}
