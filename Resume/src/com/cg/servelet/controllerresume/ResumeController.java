package com.cg.servelet.controllerresume;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cg.servelet.model.resume.Resume;

/**
 * Servlet implementation class Resume
 */
@WebServlet("/Resume")
public class ResumeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       public ResumeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	Resume resume=new Resume();
	resume.setAddress(request.getParameter("address"));
	resume.setContactNumber(request.getParameter("contactNumber"));
	resume.setDescription(request.getParameter("description"));
	resume.setDate(request.getParameter("dob"));
	resume.setFirstName(request.getParameter("fname"));
	resume.setEmail(request.getParameter("email"));
	resume.setGender(request.getParameter("gender"));
	resume.setHighestQualification(request.getParameter("highestQualification"));
	resume.setWebsite(request.getParameter("website"));
	resume.setHobbies(request.getParameterValues("hobbies"));
	resume.setSkills(request.getParameterValues("skills"));
	resume.setLastName(request.getParameter("lname"));
	request.setAttribute("ResumeModel", resume);
	RequestDispatcher requestDispatcher=request.getRequestDispatcher("output.jsp");
	requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
