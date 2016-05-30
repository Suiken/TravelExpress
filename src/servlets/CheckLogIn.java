package servlets;

import dao.UsersDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckLogIn extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/index.jsp" ).forward( request, response );
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        if(UsersDAO.accountExists(login, password))
            System.out.println("GG");
        else
            System.out.println("PAS GG");
    }
}