package servlets;

import dao.PreferencesDAO;
import dao.UsersDAO;
import model.Preference;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Profile extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        User user = UsersDAO.getUserByLogin((String) request.getSession().getAttribute("login"));
        Preference preference = PreferencesDAO.getPreferenceByUserLogin((String) request.getSession().getAttribute("login"));
        request.setAttribute("user", user);
        request.setAttribute("preference", preference);
        this.getServletContext().getRequestDispatcher("/WEB-INF/user/profile.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    }

}
