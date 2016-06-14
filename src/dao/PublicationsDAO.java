package dao;

import model.Publication;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class PublicationsDAO {
    public static ArrayList<Publication> getPublicationsByUserLogin(String login) {
        try {
            ArrayList<Publication> publications = new ArrayList<>();

            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From publications where login = ?");
            preparedStatement.setString(1, login);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPublications(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean createPublication(String content, int nbPlaces, Date publicationDate, Date runDate, int frequency, String userLogin, String departure, String arrival) {
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try {
            PreparedStatement statement = databaseConnection.prepareStatement("Insert Into " +
                    "publications(content, nb_places, publication_date, run_date, frequency, user_login, departure, arrival) " +
                    "values(?, ?, ?, ?, ?, ?, ?, ?)");
            statement.setString(1, content);
            statement.setInt(2, nbPlaces);
            statement.setDate(3, publicationDate);
            statement.setDate(4, runDate);
            statement.setInt(5, frequency);
            statement.setString(6, userLogin);
            statement.setString(7, departure);
            statement.setString(8, arrival);
            if (statement.executeUpdate() > 0)
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Création de la publication échouée");
        }

        return false;
    }

    public static ArrayList<Publication> getPublications(String userLogin){
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From publications where user_login <> ?");
            preparedStatement.setString(1, userLogin);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPublications(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<Publication> getPublicationsByUser(String userLogin){
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From publications where user_login = ?");
            preparedStatement.setString(1, userLogin);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPublications(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<Publication> getPublicationsByDepartureAndArrival(String departure, String arrival){
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("select * from publications where departure = ? and arrival = ?");
            preparedStatement.setString(1, departure);
            preparedStatement.setString(2, arrival);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPublications(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<Publication> getPublicationsByDeparture(String departure){
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("select * from publications where departure = ?");
            preparedStatement.setString(1, departure);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPublications(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<Publication> getPublicationsByArrival(String arrival){
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("select * from publications where arrival = ?");
            preparedStatement.setString(1, arrival);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToPublications(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static HashMap<Publication, Integer> getNumberOfPublicationsReservedByUser(String user){
        try {
            HashMap<Publication, Integer> publicationsReserved = new HashMap<>();
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("" +
                    "select publications.*, sum(reservations.nb_places) as reservation_number " +
                    "from reservations " +
                    "join publications on reservations.publication_id = publications.id " +
                    "where publications.user_login = ?" +
                    "group by publications.id");
            preparedStatement.setString(1, user);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Publication publication = resultSetToPublication(resultSet);
                int reservationsNumber = resultSet.getInt("reservation_number");
                publicationsReserved.put(publication, reservationsNumber);
            }
            return publicationsReserved;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean updateNbPlaces(int id, int nbPlaces){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try {
            PreparedStatement statement = databaseConnection.prepareStatement("update publications " +
                    "set nb_places = ? " +
                    "where id = ?");
            statement.setInt(1, nbPlaces);
            statement.setInt(2, id);
            if (statement.executeUpdate() > 0)
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Modification de la publication échouée");
        }

        return false;
    }

    private static ArrayList<Publication> resultSetToPublications(ResultSet resultSet) throws SQLException{
        ArrayList<Publication> publications = new ArrayList<>();
        while(resultSet.next()){
            Publication publication = resultSetToPublication(resultSet);

            publications.add(publication);
        }
        return publications;
    }

    private static Publication resultSetToPublication(ResultSet resultSet) throws SQLException{
        Publication publication = new Publication();
        publication.setId(resultSet.getInt("id"));
        publication.setContent(resultSet.getString("content"));
        publication.setNbPlaces(resultSet.getInt("nb_places"));
        publication.setPublicationDate(resultSet.getDate("publication_date"));
        publication.setRunDate(resultSet.getDate("run_date"));
        publication.setFrequency(resultSet.getInt("frequency"));
        publication.setDeparture(resultSet.getString("departure"));
        publication.setArrival(resultSet.getString("arrival"));

        return publication;
    }
}
