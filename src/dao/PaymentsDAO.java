package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentsDAO {
    public static ResultSet getPaymentFromReservation(int reservationId){
        try {
            TravelExpressJDBC travelExpressJDBC = TravelExpressJDBC.getDatabaseConnection();
            PreparedStatement preparedStatement = travelExpressJDBC.prepareStatement("Select * From payments where reservation_id = ?");
            preparedStatement.setInt(1, reservationId);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean createPayment(String userLogin, int reservationId){
        TravelExpressJDBC databaseConnection = TravelExpressJDBC.getDatabaseConnection();

        try {
            PreparedStatement statement = databaseConnection.prepareStatement("Insert Into " +
                    "payments(amount, user_login, reservation_id) " +
                    "values(5, ?, ?)");
            statement.setString(1, userLogin);
            statement.setInt(2, reservationId);
            if (statement.executeUpdate() > 0)
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Création de la publication échouée");
        }

        return false;
    }
}
