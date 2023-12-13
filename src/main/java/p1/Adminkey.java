package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Adminkey extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Admission ad=new Admission();
		Connection con=ad.Connect();
		PreparedStatement pstmt=null;
		ResultSet res=null;
		HttpSession session=request.getSession();
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM ADMINLOGIN WHERE USERNAME=? AND PASSWORD=?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			res=pstmt.executeQuery();
			
			if(res.next())
			{
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);
			}
			else
			{
				response.sendRedirect("AdminLogin.jsp");
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
