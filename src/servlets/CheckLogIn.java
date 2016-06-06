package servlets;

import dao.UsersDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CheckLogIn extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/index.jsp" ).forward( request, response );
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        RequestDispatcher dispatcher = request.getRequestDispatcher("");
        if(UsersDAO.accountExists(login, password)) {
            request.getSession().setAttribute("login", login);
            System.out.println(login + " connecté");
        }else {
            System.out.println("PAS GG"); //TODO envoyer vers une page message d'erreur ou autre
        }

        request.getRequestDispatcher("/").forward(request, response);
    }
}