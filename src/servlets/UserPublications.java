package servlets;

import dao.PublicationsDAO;
import model.Publication;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class UserPublications extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        ArrayList<Publication>  publications = PublicationsDAO.getPublications();
        request.setAttribute("publications", publications);
        this.getServletContext().getRequestDispatcher( "/WEB-INF/publications/userpublications.jsp" ).forward( request, response );
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
//        ArrayList<Publication>  publications = PublicationsDAO.getPublications();
//        request.setAttribute("publications", publications);
//        request.getRequestDispatcher("/WEB-INF/publications/userpublications.jsp").forward(request, response);
    }

}
