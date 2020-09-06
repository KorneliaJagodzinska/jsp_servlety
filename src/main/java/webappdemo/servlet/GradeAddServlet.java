package webappdemo.servlet;

import webappdemo.database.EntityDao;
import webappdemo.model.Grade;
import webappdemo.model.GradeSubject;
import webappdemo.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

public class GradeAddServlet extends HttpServlet {
    private final EntityDao<Student> studentEntityDao = new EntityDao<>();
    private final EntityDao<Grade> gradeEntityDao = new EntityDao<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> studentList = studentEntityDao.findAll(Student.class);
        req.setAttribute("all_students", studentList);
        GradeSubject[] allSubjects = GradeSubject.values();
        req.setAttribute("all_subjects", allSubjects);
        req.getRequestDispatcher("/grade_form.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long studentId = Long.valueOf(req.getParameter("studentIdValue"));
        Optional<Student> studentOptional = studentEntityDao.findById(studentId, Student.class);
        if(studentOptional.isPresent()) {
            Student student = studentOptional.get();
            Grade grade = Grade.builder()
                    .subject(GradeSubject.valueOf(req.getParameter("subjectValue")))
                    .value(Double.parseDouble(req.getParameter("gradeValue")))
                    .student(student)
                    .build();
            gradeEntityDao.saveOrUpdate(grade);
        }
        resp.sendRedirect(req.getContextPath() + "/student");
    }
}
