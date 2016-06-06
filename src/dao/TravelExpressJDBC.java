package dao;

import java.sql.*;

public class TravelExpressJDBC {

    private String url = "jdbc:mysql://localhost:3306/travelexpress";
    private String user = "suiken";
    private String password = "suiken";
    private static TravelExpressJDBC databaseConnection;
    private Connection connection;

    public static TravelExpressJDBC getDatabaseConnection(){
        if(databaseConnection == null)
            databaseConnection = new TravelExpressJDBC();
        return databaseConnection;
    }

    public TravelExpressJDBC() {
        try {
            Class.forName( "com.mysql.jdbc.Driver" );
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Connexion échouée");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.err.println("Classe non trouvée");
        }
    }

    public Connection getConnection(){
        return connection;
    }

    public void close(){
        try {
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
            System.err.println("Fermeture de la connexion échouée");
        }
    }

    public PreparedStatement prepareStatement(String request){
        try {
            return connection.prepareStatement(request);
        }catch(SQLException e){
            e.printStackTrace();
            System.err.println("Préparation de la requête échouée");
        }
        return null;
    }
}
