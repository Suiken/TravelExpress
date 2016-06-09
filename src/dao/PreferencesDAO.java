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

    public static int createPreference(String login) {
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Insert Into preferences(user_login) " +
                    "values(?)");
            preparedStatement.setString(1, login);
            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static int updateAllByLogin(boolean smoke, boolean phone, boolean email, boolean aircon, boolean animal, boolean suitcase, boolean bicycle, boolean ski, String login){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try{
            PreparedStatement statement = databaseConnection.prepareStatement("Update preferences " +
                    "set smoke = ?, phone = ?, email = ?, aircon = ?, animal = ?, suitcase = ?, bicycle = ?, ski = ? " +
                    "where user_login = ?");
            statement.setInt(1, smoke ? 1 : 0);
            statement.setInt(2, phone ? 1 : 0);
            statement.setInt(3, email ? 1 : 0);
            statement.setInt(4, aircon ? 1 : 0);
            statement.setInt(5, animal ? 1 : 0);
            statement.setInt(6, suitcase ? 1 : 0);
            statement.setInt(7, bicycle ? 1 : 0);
            statement.setInt(8, ski ? 1 : 0);
            statement.setString(9, login);
            return statement.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
            System.err.println("Requête échouée");
        }

        return -1;
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
