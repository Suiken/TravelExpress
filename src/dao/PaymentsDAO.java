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
}
