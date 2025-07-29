package configuration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/db";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL driver once
        } catch (ClassNotFoundException e) {
            System.out.println("Issue loading MySQL driver");
        }
    }

    public static Connection getConnection() {
        try {
            return DriverManager.getConnection(URL, USER, PASSWORD); // NEW connection each time
        } catch (SQLException e) {
            throw new RuntimeException("Unable to connect to database", e);
        }
    }
}
