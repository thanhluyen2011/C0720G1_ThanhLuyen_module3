package controller;

import model.Student;
import service.StudentService;
import service.StudentServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentServlet",urlPatterns = "/student")
public class StudentServlet extends HttpServlet {
    private StudentService studentService = new StudentServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = " ";
        }
        switch (action){
            case "delete":
//                deleteCustomer(request,response);
                break;
            case "edit":
//                editCustomer(request,response);
                break;
            case "add":
                addStudent(request,response);
                getAllCustomer(request,response);
                break;
        
            default:
                getAllCustomer(request,response);
        }

    }

    private void addStudent(HttpServletRequest request, HttpServletResponse response) {
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String phone=request.getParameter("phone");
        Student student=new Student(name,gender,phone);
        studentService.create(student);
        getAllCustomer(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = " ";
        }
        switch (action){
            case "delete":
//                deleteCustomer(request,response);
                break;
            case "edit":
//                editCustomer(request,response);
                break;
            case "add":
                addStudentform(request,response);
                break;
            case "search":
//                searchCustomerByName(request,response);
                break;
            default:
                getAllCustomer(request,response);
        }
    }

    private void addStudentform(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       RequestDispatcher dispatcher = request.getRequestDispatcher("/add.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getAllCustomer(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("getAll", studentService.getAllStudent());
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
