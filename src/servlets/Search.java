package servlets;

import dao.PaymentsDAO;
import dao.PublicationsDAO;
import dao.ReservationsDAO;
import dao.UsersDAO;
import model.Publication;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class Search extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        response.sendRedirect("");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String departure = request.getParameter("departure");
        String arrival = request.getParameter("arrival");
        ArrayList<Publication> publications;

        if(arrival.equals(""))
            publications = PublicationsDAO.getPublicationsByDeparture(departure);
        else if(departure.equals(""))
            publications = PublicationsDAO.getPublicationsByArrival(arrival);
        else
            publications = PublicationsDAO.getPublicationsByDepartureAndArrival(departure, arrival);

        request.setAttribute("publications", publications);

        this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

}
