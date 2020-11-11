package controller;

import dao.CustomerDao;
import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "/home")
public class CustomerServlet extends HttpServlet {
    CustomerDao customerDao = new CustomerDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null){
//            action = " ";
//        }
//        switch (action){
//            case "delete":
//                deleteCustomer(request,response);
//                break;
//            case "edit":
//                editCustomer(request,response);
//                break;
//            case "add":
//                addCustomer(request,response);
//                break;
//            case "search":
//                searchCustomerByName(request,response);
//                break;
//            default:
//                getAllCustomer(request,response);
//        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = " ";
        }
        switch (action){
            case "delete":
                deleteCustomer(request,response);
                break;
            case "edit":
                editCustomer(request,response);
                break;
            case "add":
                addCustomer(request,response);
                break;
            case "search":
                searchCustomerByName(request,response);
                break;
            default:
                getAllCustomer(request,response);
        }
    }

    private void searchCustomerByName(HttpServletRequest request, HttpServletResponse response) {
        String data = request.getParameter("searchData");
        request.setAttribute("getAll",customerDao.searchByName(data));
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String sdt = request.getParameter("sdt");
        Customer customer = new Customer(name,email,sdt);
        customerDao.addNewCus(customer);
        getAllCustomer(request,response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        customerDao.deleteCus(id);
        getAllCustomer(request,response);
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String sdt = request.getParameter("sdt");
        Customer customer = new Customer(id,name,email,sdt);
        customerDao.updateCus(customer);
        getAllCustomer(request,response);
    }

    private void getAllCustomer(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("getAll",customerDao.getAll());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
