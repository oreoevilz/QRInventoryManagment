import java.sql.*;

public class Main {
    public static void main(String[] args) throws SQLException {
        ItemDAO itemDAO = new ItemDAOImpl();

        Item item = itemDAO.get(4);

        System.out.println(item);

        int result = itemDAO.delete(item);
        System.out.println(result);
    }
}
