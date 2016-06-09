package servlets;

import dao.UsersDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SignIn extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/WEB-INF/signin/signin.jsp" ).forward( request, response );
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        if(UsersDAO.accountExists(login, password))
            request.getSession().setAttribute("login", login);
    }
}
