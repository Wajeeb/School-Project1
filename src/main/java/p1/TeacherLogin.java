package p1;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TeacherLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static Statement stmt=null;
	static ResultSet res=null;
	static PreparedStatement pstmt=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username=request.getParameter("username");
		String pswd=request.getParameter("password");
		
		Admission adm=new Admission();
		Connection con=adm.Connect();
		
		try {
			pstmt=con.prepareStatement("SELECT * FROM TEACHER WHERE MOBILE=? AND PASSWORD=?");
			pstmt.setString(1, username);
			pstmt.setString(2, pswd);
			res=pstmt.executeQuery();
			if(res.next())
			{
				request.setAttribute("teafullname", res.getString(1));
				request.setAttribute("teaage", res.getString(2));
				request.setAttribute("teamobile", res.getString(3));
				request.setAttribute("teaaadhaar", res.getString(4));
				request.setAttribute("teamail", res.getString(5));
				request.setAttribute("teagender", res.getString(6));
				request.setAttribute("tealanguage", res.getString(7));
				request.setAttribute("teapassword", res.getString(8));
				
				request.getRequestDispatcher("TeacherDashboard.jsp").forward(request, response);
			}else
			{
				response.sendRedirect("TeacherLogin.jsp");
			}
		}catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("Login fail");
				
			}
		}
		
	}
