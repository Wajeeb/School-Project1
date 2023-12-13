package p1;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddTeachers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FullName=request.getParameter("Fullname");
		String Age=request.getParameter("Age");
		String Mobile=request.getParameter("Mobile");
		String Aadhaar=request.getParameter("Aadhaar");
		String Mail=request.getParameter("Mail");
		String Gender=request.getParameter("Gender");
		String Language=request.getParameter("Language1")+" "+ request.getParameter("Language2")+" "+ request.getParameter("Language3");
		String CreatePassword=request.getParameter("crpassword");
		String ConfrimPassword=request.getParameter("copassword");
		
		Teacher tea=new Teacher();
		tea.setFullName(FullName);
		tea.setAge(Age);
		tea.setMobile(Mobile);
		tea.setAadhaar(Aadhaar);
		tea.setMail(Mail);
		tea.setGender(Gender);
		tea.setLanguage(Language);
		tea.setCreatePassword(CreatePassword);
		tea.setConfirmPassword(ConfrimPassword);
		
		int res=tea.insertData();
		try {
		
			if(res>0)
			{
				response.sendRedirect("AdminDashboard.jsp");
			}
			else {
				response.sendRedirect("AdminDashboard.jsp");
			}
		}catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}