/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DjShujja
 */
@WebServlet(name = "GradeGPAServlet", urlPatterns = {"/GradeGPAServlet"})
public class GradeGPAServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int sum = 0;
            float sgpa = 0;
            float gpa = 0;
            int semester = Integer.parseInt(request.getParameter("semester"));
            int ch = 0;
            int total_subjects = 0;
            int rollNo = 0;
             dao dao = new dao();

            HttpSession session = request.getSession();
            rollNo = Integer.parseInt(session.getAttribute("rollNo").toString());
            ResultSet rs = dao.singleStudent(rollNo);
            try{
                while(rs.next()){
                    if(semester == rs.getInt("semester")){
//                       out.print("<div class='bg-danger'>You already have SGPA for this semester!</div>");
                        response.sendRedirect("semester_exists.jsp");
                    }
                }
            }catch(Exception ex){
                System.out.println(ex.toString());
            }
            gpaLogic gpaLogic = new gpaLogic();
            students_data sd = new students_data();
            sd.semester = semester;
            sd.marks = 0;
            sd.rollNo = rollNo;

            total_subjects = Integer.parseInt(request.getParameter("total_subjects"));
            for (int i = 1; i <= total_subjects; i++) {
//                gpa = gpa + gpaLogic.gpa_logic(Float.parseFloat(request.getParameter("marks" + i)), Integer.parseInt(request.getParameter("ch" + i)));
                gpa = gpa + gpaLogic.grade_logic(request.getParameter("grade" + i), Integer.parseInt(request.getParameter("ch" + i)));
                ch = ch + Integer.parseInt(request.getParameter("ch" + i));
                sd.grade = request.getParameter("grade" + i);
                sd.subject = request.getParameter("subject" + i);
                sd.creditHour = Integer.parseInt(request.getParameter("ch" + i));
                dao.insertStudentData(sd);
                System.out.println(gpa);
            }
            float total_gpa = gpa / ch;
            session.setAttribute("total_gpa", total_gpa);
            float gpa_session = Float.parseFloat(session.getAttribute("total_gpa").toString());
            out.print("<b>Your GPA = " + gpa_session + " </b>");
            out.print("<b>Total Subjects = " + total_subjects + "</b>");
            request.getRequestDispatcher("grade_formula.jsp").include(request, response);
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
