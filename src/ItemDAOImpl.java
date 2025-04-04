import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ItemDAOImpl implements ItemDAO{
    @Override
    public Item get(int id) throws SQLException {
        Connection con = Database.getConnection();
        Item item = null;

        String sql = "SELECT id, qr_id, name, description, category_id, stock_quantity, location_id, supplier_id FROM Items WHERE id = ?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            int oid = rs.getInt("id");
            String qrId = rs.getString("qr_id");
            String name = rs.getString("name");
            String description = rs.getString("description");
            int categoryId = rs.getInt("category_id");
            int stockQuantity = rs.getInt("stock_quantity");
            int locationId = rs.getInt("location_id");
            int supplierId = rs.getInt("supplier_id");

            item = new Item(oid, qrId, name, description, categoryId, stockQuantity, locationId, supplierId);
        }
        rs.close();
        Database.closePreparedStatement(ps);
        Database.closeConnection(con);

        return item;
    }

    @Override
    public List<Item> getAll() throws SQLException {
        return List.of();
    }

    @Override
    public int save(Item item) throws SQLException {
        return 0;
    }

    @Override
    public int insert(Item item) throws SQLException {
        Connection con = Database.getConnection();

        String sql = "INSERT INTO Items (qr_id, name, description, category_id, stock_quantity, location_id, supplier_id) VALUES (?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, item.getQr_id());
        ps.setString(2, item.getName());
        ps.setString(3, item.getDescription());
        ps.setInt(4, item.getCategory_id());
        ps.setInt(5, item.getStock_quantity());
        ps.setInt(6, item.getLocation_id());
        ps.setInt(7, item.getSupplier_id());

        int result = ps.executeUpdate();

        Database.closePreparedStatement(ps);
        Database.closeConnection(con);

        return result;
    }

    @Override
    public int update(Item item) throws SQLException {
        Connection con = Database.getConnection();

        String sql = "UPDATE Items set name = ?, description = ?, category_id = ?, stock_quantity = ?, location_id = ?, supplier_id = ? WHERE id = ?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, item.getName());
        ps.setString(2, item.getDescription());
        ps.setInt(3, item.getCategory_id());
        ps.setInt(4, item.getStock_quantity());
        ps.setInt(5, item.getLocation_id());
        ps.setInt(6, item.getSupplier_id());
        ps.setInt(7, item.getId());

        int result = ps.executeUpdate();

        Database.closePreparedStatement(ps);
        Database.closeConnection(con);

        return result;
    }

    @Override
    public int delete(Item item) throws SQLException{
        Connection con = Database.getConnection();

        String sql = "DELETE FROM Items WHERE id = ?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, item.getId());

        int result = ps.executeUpdate();

        Database.closePreparedStatement(ps);
        Database.closeConnection(con);

        return result;
    }
}
