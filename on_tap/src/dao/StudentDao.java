package dao;

import model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDao implements IStudentDao{
    String jdbcURL = "jdbc:mysql://localhost:3306/class";
    private String jdbcCustomername = "root";
    private String jdbcPassword = "12345678";
    private final String SHOW_ALL_STUDENT = "select * from student;";
    private final String CREATE_STUDENT="insert into student values(?,?,?)";
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
    protected void closeConnection(){
        try {
            getConnection().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    public List<Student> getAllStudent() {
        List<Student> students = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SHOW_ALL_STUDENT)){
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String gender =rs.getString("gender");
                String phoneNumber = rs.getString("phoneNumber");
                Student student = new Student(id,name,gender,phoneNumber);
                students.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection();
        }
        return students;
    }

    @Override
    public void create(Student student) {
        Connection connection=getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(CREATE_STUDENT);
            preparedStatement.setString(1,student.getName());
            preparedStatement.setString(2,student.getGender());
            preparedStatement.setString(3,student.getPhoneNumber());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
