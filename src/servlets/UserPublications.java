package servlets;

import dao.PublicationsDAO;
import dao.UsersDAO;
import model.Publication;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;

public class UserPublications extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        ArrayList<Publication>  publications = PublicationsDAO.getPublications((String) request.getSession().getAttribute("login"));
        User user = UsersDAO.getUserByLogin((String) request.getSession().getAttribute("login"));
        request.setAttribute("publications", publications);
        request.setAttribute("user", user);
        this.getServletContext().getRequestDispatcher( "/WEB-INF/user/publications.jsp" ).forward( request, response );
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String content = request.getParameter("content");
        int nbPlaces = Integer.valueOf(request.getParameter("nbPlaces"));
        Date publicationDate = new Date(Calendar.getInstance().getTimeInMillis());
        Date runDate = Date.valueOf(request.getParameter("runDate"));
        int frequency = Integer.valueOf(request.getParameter("frequency"));
        String userLogin = (String) request.getSession().getAttribute("login");
        String departure = request.getParameter("departure");
        String arrival = request.getParameter("arrival");

        PublicationsDAO.createPublication(content, nbPlaces, publicationDate, runDate, frequency, userLogin, departure, arrival);

        response.sendRedirect("/userpublications");
    }

}
