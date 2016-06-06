package servlets;

import dao.PublicationsDAO;
import dao.UsersDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;

public class AddPublication extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/addpublication.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String content = request.getParameter("content");
        int nbPlaces = Integer.valueOf(request.getParameter("nbPlaces"));
        Date publicationDate = new Date(Calendar.getInstance().getTimeInMillis());
        Date runDate = Date.valueOf(request.getParameter("runDate"));
        int frequency = Integer.valueOf(request.getParameter("frequency"));
        String userLogin = request.getParameter("userLogin");
        
        PublicationsDAO.createPublication(content, nbPlaces, publicationDate, runDate, frequency, userLogin);

        request.getRequestDispatcher("/WEB-INF/addpublication.jsp").forward(request, response);
    }

}
