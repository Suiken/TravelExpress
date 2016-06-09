package servlets;

import dao.*;
import model.Preference;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Reservations extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        User user = UsersDAO.getUserByLogin((String) request.getSession().getAttribute("login"));
        request.setAttribute("user", user);
        this.getServletContext().getRequestDispatcher("/WEB-INF/user/reservations.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        int publicationId = Integer.parseInt(request.getParameter("id"));
        int nbPlaces = Integer.parseInt(request.getParameter("nbPlaces")) - 1;
        String login = (String) request.getSession().getAttribute("login");

        PublicationsDAO.updateNbPlaces(publicationId, nbPlaces);
        int reservationId = ReservationsDAO.createReservationAndGetId(login, publicationId);
        PaymentsDAO.createPayment(login, reservationId);


        response.sendRedirect("reservations");

    }

}
