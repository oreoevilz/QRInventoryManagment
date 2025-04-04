import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Database {

    private static String url = "jdbc:mysql://localhost:3333/inventory_schema";
    private static String user = "root";
    private static String password = "P@ssw0rd";

    private Database() {

    }

    public static Connection getConnection() throws SQLException {
        Connection connection = null;
        connection = DriverManager.getConnection(url, user, password);

        return connection;
    }

    public static void closePreparedStatement(PreparedStatement ps){
        try { ps.close(); } catch (Exception e) { /* Ignored */ }
    }

    public static void closeConnection(Connection con){
        try { con.close(); } catch (Exception e) { /* Ignored */ }
    }

}
