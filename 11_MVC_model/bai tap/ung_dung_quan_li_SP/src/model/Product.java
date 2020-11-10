package model;

public class Product {
    private int id;
    private String name;
    private String price;
    private String status;
    private String producer;
    static int cusNum = 0;
    public Product() {
        cusNum++;
        this.id = cusNum;
    }

    public Product(String name, String price, String status, String producer) {
        cusNum++;
        this.id = cusNum;
        this.name = name;
        this.price = price;
        this.status = status;
        this.producer = producer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public static int getCusNum() {
        return cusNum;
    }

    public static void setCusNum(int cusNum) {
        Product.cusNum = cusNum;
    }
}
