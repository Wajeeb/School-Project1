package p1;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Admission ad=new Admission();
		
		Connection con=ad.Connect();
		PreparedStatement ps=null;
		
		String Classes=request.getParameter("UClasses");
		String Aadhaar=request.getParameter("UAadhaar");
		String Student=request.getParameter("UStudent");
		String Gender=request.getParameter("USelectgender");
		String Dob=request.getParameter("UDateofbirth");
		String Mobile=request.getParameter("UMobilenumber");
		String Father=request.getParameter("UFathername");
		String Mother=request.getParameter("UMothername");
		String Address=request.getParameter("UFulladdress");
		String State=request.getParameter("USelectstate");
		String District=request.getParameter("USelectdistrict");
		String Pin=request.getParameter("UPincode");
		String PASSWORD=request.getParameter("UPassword");
		
		try {
			ps=con.prepareStatement("UPDATE ADMISSION SET CLASSES=?,STUDENT=?,GENDER=?,DOB=?,MOBILE=?,FATHER=?,MOTHER=?,ADDRESS=?,STATE=?,DISTRICT=?,PIN=?,PASSWORD=? WHERE AADHAAR=?");
			ps.setString(1, Classes);
			ps.setString(2, Student);
			ps.setString(3, Gender);
			ps.setString(4, Dob);
			ps.setString(5, Mobile);
			ps.setString(6, Father);
			ps.setString(7, Mother);
			ps.setString(8, Address);
			ps.setString(9, State);
			ps.setString(10, District);
			ps.setString(11, Pin);
			ps.setString(12, PASSWORD);
			ps.setString(13, Aadhaar);
			
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
