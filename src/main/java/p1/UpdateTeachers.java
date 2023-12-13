package p1;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdateTeachers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Admission ad=new Admission();
		
		Connection con=ad.Connect();
		PreparedStatement ps=null;
		
		String Fullname=request.getParameter("Fullname");
		String Age=request.getParameter("Age");
		String Mobile=request.getParameter("Mobile");
		String Aadhaar=request.getParameter("Aadhaar");
		String Mail=request.getParameter("Mail");
		String Gender=request.getParameter("Gender");
		String Language=request.getParameter("Language");
		
		try {
			ps=con.prepareStatement("UPDATE TEACHER SET FULLNAME=?,AGE=?,MOBILE=?,MAIL=?,GENDER=?,LANGUAGE=? WHERE AADHAAR=?");
			ps.setString(1, Fullname);
			ps.setString(2, Age);
			ps.setString(3, Mobile);
			ps.setString(4, Mail);
			ps.setString(5, Gender);
			ps.setString(6, Language);
			ps.setString(7, Aadhaar);
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success.jsp");
			}
			else
			{
				response.sendRedirect("failed.jsp");
			}
			
		}catch(Exception e)
		{
			
		}
	}

}
