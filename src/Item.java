public class Item {

    private int id;
    private String qr_id;
    private String name;
    private String description;
    private int category_id;
    private int stock_quantity;
    private int location_id;
    private int supplier_id;

    public Item(int id, String qr_id, String name, String description, int category_id, int stock_quantity, int location_id, int supplier_id) {
        this.id = id;
        this.qr_id = qr_id;
        this.name = name;
        this.description = description;
        this.category_id = category_id;
        this.stock_quantity = stock_quantity;
        this.location_id = location_id;
        this.supplier_id = supplier_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQr_id() {
        return qr_id;
    }

    public void setQr_id(String qr_id) {
        this.qr_id = qr_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getStock_quantity() {
        return stock_quantity;
    }

    public void setStock_quantity(int stock_quantity) {
        this.stock_quantity = stock_quantity;
    }

    public int getLocation_id() {
        return location_id;
    }

    public void setLocation_id(int location_id) {
        this.location_id = location_id;
    }

    public int getSupplier_id() {
        return supplier_id;
    }

    public void setSupplier_id(int supplier_id) {
        this.supplier_id = supplier_id;
    }

    @Override
    public String toString() {
        return "Item{" +
                "id='" + id + '\'' +
                ", qr_id='" + qr_id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", category_id=" + category_id +
                ", stock_quantity=" + stock_quantity +
                ", location_id=" + location_id +
                ", supplier_id=" + supplier_id +
                '}';
    }
}
