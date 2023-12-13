package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String delID=request.getParameter("delID");
		
		Admission adm=new Admission();
		Connection con=adm.Connect();
		PreparedStatement pstmt=null;
		ResultSet res=null;
		try {
			pstmt=con.prepareStatement("DELETE FROM ADMISSION WHERE AADHAAR=?");
			pstmt.setString(1, delID);
			res=pstmt.executeQuery();
			while(res.next())
			{
				response.sendRedirect("AdminDashboard.jsp");
			}
				
		} catch (Exception e) {
			
		}
			
	}

}
