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

public class ProfileUpdate extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        User user = UsersDAO.getUserByLogin((String) request.getSession().getAttribute("login"));
        Preference preference = PreferencesDAO.getPreferenceByUserLogin((String) request.getSession().getAttribute("login"));
        request.setAttribute("user", user);
        request.setAttribute("preference", preference);
        this.getServletContext().getRequestDispatcher( "/WEB-INF/user/profile_update.jsp" ).forward( request, response );
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String login = (String) request.getSession().getAttribute("login");

        String lastName = request.getParameter("last_name");
        String firstName = request.getParameter("first_name");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String email = request.getParameter("email");

        boolean smoke = request.getParameter("smoke") != null && request.getParameter("smoke").equals("on");
        boolean phone = request.getParameter("phone") != null && request.getParameter("phone").equals("on");
        boolean emailp = request.getParameter("emailp") != null && request.getParameter("emailp").equals("on");
        boolean aircon = request.getParameter("aircon") != null && request.getParameter("aircon").equals("on");
        boolean animal = request.getParameter("animal") != null && request.getParameter("animal").equals("on");
        boolean suitcase = request.getParameter("suitcase") != null && request.getParameter("suitcase").equals("on");
        boolean bicycle = request.getParameter("bicycle") != null && request.getParameter("bicycle").equals("on");
        boolean ski = request.getParameter("ski") != null && request.getParameter("ski").equals("on");

        UsersDAO.updateAllByLogin(lastName, firstName, address, city, state, email, login);
        PreferencesDAO.updateAllByLogin(smoke, phone, emailp, aircon, animal, suitcase, bicycle, ski, login);

        response.sendRedirect("/profileupdate");
    }
}