package dao;

import model.Publication;
import model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UsersDAO {

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

    public static User getUserByLogin(String login){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try{
            PreparedStatement statement = databaseConnection.prepareStatement("Select * From users where login = ?");
            statement.setString(1, login);
            ResultSet resultSet = statement.executeQuery();
            return resultSetToUser(resultSet);
        }catch(SQLException e){
            e.printStackTrace();
            System.err.println("Requête échouée");
        }

        return null;
    }

    private static User resultSetToUser(ResultSet resultSet) throws SQLException{
        User user = new User();
        while(resultSet.next()){
            user.setLogin(resultSet.getString("login"));
            user.setFirstName(resultSet.getString("first_name"));
            user.setLastName(resultSet.getString("last_name"));
            user.setAddress(resultSet.getString("address"));
            user.setCity(resultSet.getString("city"));
            user.setState(resultSet.getString("state"));
            user.setEmail(resultSet.getString("email"));
        }
        return user;
    }

    private static ArrayList<User> resultSetToUsers(ResultSet resultSet) throws SQLException{
        ArrayList<User> users = new ArrayList<>();
        while(resultSet.next()){
            User user = new User();
            user.setLogin(resultSet.getString("login"));
            user.setLastName(resultSet.getString("last_name"));
            user.setAddress(resultSet.getString("address"));
            user.setCity(resultSet.getString("city"));
            user.setState(resultSet.getString("state"));
            user.setEmail(resultSet.getString("email"));

            users.add(user);
        }
        return users;
    }
}
