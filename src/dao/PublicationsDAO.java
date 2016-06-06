package dao;

import model.Publication;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PublicationsDAO {
    public static ArrayList<Publication> getPublicationsByUserLogin(String login) {
        try {
            ArrayList<Publication> publications = new ArrayList<>();

            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From publications where login = ?");
            preparedStatement.setString(1, login);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Publication publication = new Publication();
                publication.setContent(resultSet.getString("content"));
                publication.setNbPlaces(resultSet.getInt("nb_places"));
                publication.setPublicationDate(resultSet.getDate("publication_date"));
                publication.setRunDate(resultSet.getDate("run_date"));
                publication.setFrequency(resultSet.getInt("frequency"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean createPublication(String content, int nbPlaces, Date publicationDate, Date runDate, int frequency, String userLogin) {
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try {
            PreparedStatement statement = databaseConnection.prepareStatement("Insert Into " +
                    "publications(content, nb_places, publication_date, run_date, frequency, user_login) " +
                    "values(?, ?, ?, ?, ?, ?)");
            statement.setString(1, content);
            statement.setInt(2, nbPlaces);
            statement.setDate(3, publicationDate);
            statement.setDate(4, runDate);
            statement.setInt(5, frequency);
            statement.setString(6, userLogin);
            if (statement.executeUpdate() > 0)
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Création de la publication échouée");
        }

        return false;
    }
}
