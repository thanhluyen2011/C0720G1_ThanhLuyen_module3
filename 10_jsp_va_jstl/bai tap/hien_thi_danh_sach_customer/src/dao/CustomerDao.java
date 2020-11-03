package dao;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
    static List<Customer> customerList;
    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer("Thành Luyện","2000-11-20","Quảng Nam","123.jpg"));
        customerList.add(new Customer("Thành Luyện2","2000-11-20","Quảng Nam","suong.jpg"));
        customerList.add(new Customer("Thành Luyện3","2000-11-20","Quảng Nam","123.jpg"));
        customerList.add(new Customer("Thành Luyện4","2000-11-20","Quảng Nam","suong.jpg"));
    }
    public static List<Customer> getAllCustomer(){
        return customerList;
    }
}
