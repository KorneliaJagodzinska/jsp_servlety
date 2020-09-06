package webappdemo.servlet;

import webappdemo.database.EntityDao;
import webappdemo.model.Grade;
import webappdemo.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GradeAddServlet extends HttpServlet {
    private final EntityDao<Student> studentEntityDao= new EntityDao<>();
    private final EntityDao<Grade> gradeEntityDao= new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
