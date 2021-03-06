package webappdemo.servlet;

import webappdemo.database.EntityDao;
import webappdemo.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/student/form")
public class StudentAddServlet extends HttpServlet {
    private final EntityDao<Student> studentEntityDao= new EntityDao<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/student_form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student student = Student.builder()
                .firstName(req.getParameter("firstNameValue"))
                .lastName(req.getParameter("lastNameValue"))
                .birthDate(LocalDate.parse(req.getParameter("birthDateValue"), DateTimeFormatter.ofPattern("yyyy.MM.dd")))
                .special(req.getParameter("specialValue") != null && req.getParameter("specialValue").equals("on"))
                .ects(Double.parseDouble(req.getParameter("ectsValue")))
                .build();

        studentEntityDao.saveOrUpdate(student);
        resp.sendRedirect(req.getContextPath()+"/student/form");
    }
}
