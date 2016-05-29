package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SignIn extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/WEB-INF/signin/signin.jsp" ).forward( request, response );
    }
}
