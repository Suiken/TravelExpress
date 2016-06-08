package dao;

import model.Preference;
import model.Publication;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PreferencesDAO {

    public static Preference getPreferenceByUserLogin(String login) {
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From preferences where user_login = ?");
            preparedStatement.setString(1, login);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPreference(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static Preference resultSetToPreference(ResultSet resultSet) throws SQLException{
        Preference preference = new Preference();
        while(resultSet.next()){
            preference.setSmoke(resultSet.getBoolean("smoke"));
            preference.setPhone(resultSet.getBoolean("phone"));
            preference.setEmail(resultSet.getBoolean("email"));
            preference.setAircon(resultSet.getBoolean("aircon"));
            preference.setAnimal(resultSet.getBoolean("animal"));
            preference.setSuitcase(resultSet.getBoolean("suitcase"));
            preference.setBicycle(resultSet.getBoolean("bicycle"));
            preference.setSki(resultSet.getBoolean("ski"));
        }
        return preference;
    }

}
