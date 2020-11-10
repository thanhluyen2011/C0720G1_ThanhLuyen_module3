package service;

import model.Student;

import java.util.List;

public interface StudentService {
    List<Student> getAllStudent();
    void create(Student student);
}
