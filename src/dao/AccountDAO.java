package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {

    public static boolean accountExists(String login, String password){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try{
            PreparedStatement statement = databaseConnection.prepareStatement("Select * From users where login = ? and pw = ?");
            statement.setString(1, login);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.first())
                return true;
        }catch(SQLException e){
            e.printStackTrace();
            System.err.println("Requête échouée");
        }

        return false;
    }

    public static boolean createAccount(String login, String password, String last_name, String first_name, String address, String city, String state, String email){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try{
            PreparedStatement statement = databaseConnection.prepareStatement("Insert Into " +
                    "users(login, pw, last_name, first_name, address, city, state, email) " +
                    "values(?, ?, ?, ?, ?, ?, ?, ?)");
            statement.setString(1, login);
            statement.setString(2, password);
            statement.setString(3, last_name);
            statement.setString(4, first_name);
            statement.setString(5, address);
            statement.setString(6, city);
            statement.setString(7, state);
            statement.setString(8, email);
            if(statement.executeUpdate() > 0)
                return true;


        }catch(SQLException e){
            e.printStackTrace();
            System.err.println("Création du compte échouée");
        }

        return false;
    }
}
