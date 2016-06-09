package dao;

import model.Publication;
import model.Reservation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReservationsDAO {

    public static ArrayList<Reservation> getReservationsByUserLogin(String login) {
        try {
            ArrayList<Reservation> reservation = new ArrayList<>();

            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From publications where login = ?");
            preparedStatement.setString(1, login);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSetToReservations(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static int createReservationAndGetId(String login, int publicationId){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try {
            PreparedStatement statement = databaseConnection.prepareStatement("Insert Into " +
                    "reservations(nb_places, user_login, publication_id) " +
                    "values(1, ?, ?)");
            statement.setString(1, login);
            statement.setInt(2, publicationId);
            if (statement.executeUpdate() > 0){
                statement = databaseConnection.prepareStatement("Select * " +
                        "from reservations " +
                        "where user_login = ? " +
                        "and publication_id = ? " +
                        "order by id desc");
                statement.setString(1, login);
                statement.setInt(2, publicationId);

                ResultSet resultSet = statement.executeQuery();
                resultSet.first();
                return resultSet.getInt("id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Création de la réservation échouée");
        }

        return -1;
    }

    private static ArrayList<Reservation> resultSetToReservations(ResultSet resultSet) throws SQLException{
        ArrayList<Reservation> reservations = new ArrayList<>();
        while(resultSet.next()){
            Reservation reservation = new Reservation();
            reservation.setNbPlaces(resultSet.getInt("nb_places"));
            reservation.setPublicationId(resultSet.getInt("publication_id"));
            reservation.setUserLogin(resultSet.getString("user_login"));

            reservations.add(reservation);
        }
        return reservations;
    }

}
