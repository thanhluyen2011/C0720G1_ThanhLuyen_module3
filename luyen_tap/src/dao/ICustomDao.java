package dao;

import model.Customer;

import java.util.List;

public interface ICustomDao {
    List<Customer> getAll();
    Customer getCusById(int id);
    boolean updateCus(Customer customer);
    boolean deleteCus(int id);
    void addNewCus(Customer customer);
    List<Customer> searchByName(String name);
}
