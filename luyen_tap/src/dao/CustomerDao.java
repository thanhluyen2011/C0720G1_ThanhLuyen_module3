package dao;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDao implements ICustomDao {
    String jdbcURL = "jdbc:mysql://localhost:3306/new";
    private String jdbcCustomername = "root";
    private String jdbcPassword = "12345678";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customers" + "  (name, email, sdt) VALUES " +
            " (?, ?, ?);";

    private static final String SELECT_CUSTOMER_BY_ID = "select id,name,email,sdt from customers where id =?";
    private static final String SELECT_ALL_CUSTOMER = "select * from customers";
    private static final String DELETE_CUSTOMER_SQL = "delete from customers where id = ?;";
    private static final String UPDATE_CUSTOMER_SQL = "update customers set name = ?,email= ?, sdt =? where id = ?;";
    private static final String SEARCH_CUSTOMER_SQL = "select * from customers where name like ?;";
    protected Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL,jdbcCustomername,jdbcPassword);
        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
    protected void closeConection(){
        try {
            getConnection().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    public List<Customer> getAll() {
        List<Customer> list = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL_CUSTOMER)){
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String sdt = rs.getString("sdt");
                list.add(new Customer(id,name,email,sdt));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConection();
        }
        return list;
    }
    @Override
    public Customer getCusById(int id) {
        Customer customer = null;
        try (Connection connection = getConnection();
        PreparedStatement statement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID)){
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                String email = rs.getString("id");
                String sdt = rs.getString("sdt");
                customer = new Customer(id,name,email,sdt);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConection();
        }
        return customer;
    }


    @Override
    public boolean updateCus(Customer customer) {
        boolean check = false;
        try (Connection connection = getConnection();
        PreparedStatement statement = connection.prepareStatement(UPDATE_CUSTOMER_SQL)){
            statement.setInt(4,customer.getId());
            statement.setString(1,customer.getName());
            statement.setString(2,customer.getEmail());
            statement.setString(3,customer.getSdt());
            check = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check;
    }

    @Override
    public boolean deleteCus(int id) {
        boolean check = false;
        try(Connection connection = getConnection();
        PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER_SQL)) {
            statement.setInt(1,id);
            check = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConection();
        }
        return check;
    }

    @Override
    public void addNewCus(Customer customer) {
        try(Connection connection = getConnection();
        PreparedStatement statement = connection.prepareStatement(INSERT_CUSTOMER_SQL)){
            statement.setString(1,customer.getName());
            statement.setString(2,customer.getEmail());
            statement.setString(3,customer.getSdt());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConection();
        }
    }

    @Override
    public List<Customer> searchByName(String name) {
        List<Customer> customerList = new ArrayList<>();
        try (Connection connection =getConnection();
        PreparedStatement statement = connection.prepareStatement(SEARCH_CUSTOMER_SQL)){
            statement.setString(1,"%" + name +"%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String nameNew = rs.getString("name");
                String email = rs.getString("email");
                String sdt = rs.getString("sdt");
                Customer customer = new Customer(id,nameNew,email,sdt);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConection();
        }
        System.out.println(customerList);
        return customerList;
    }
}
