package service;

import dao.IStudentDao;
import dao.StudentDao;
import model.Student;

import java.util.List;

public class StudentServiceImpl implements StudentService {
    private IStudentDao studentDao = new StudentDao();

    @Override
    public List<Student> getAllStudent() {
        return studentDao.getAllStudent();
    }

    @Override
    public void create(Student student) {
        studentDao.create(student);
    }
}
