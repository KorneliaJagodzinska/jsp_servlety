package webappdemo.servlet;

import webappdemo.database.EntityDao;
import webappdemo.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class StudentListServlet extends HttpServlet {
    private final EntityDao<Student> studentEntityDao= new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> studentList= studentEntityDao.findAll(Student.class);
        req.setAttribute("lista_studentów", studentList);
        req.getRequestDispatcher("/student_list.jsp").forward(req,resp);
    }
}
