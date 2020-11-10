package dao;

import model.Student;

import java.util.List;

public interface IStudentDao {
    List<Student> getAllStudent();
   void create(Student student);
}
