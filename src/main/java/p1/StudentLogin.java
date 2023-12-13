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

public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static Statement stmt=null;
	static ResultSet res=null;
	static PreparedStatement pstmt=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username=request.getParameter("username");
		String pswd=request.getParameter("pswd");
		
		Admission adm=new Admission();
		Connection con=adm.Connect();
		
		try {
			pstmt=con.prepareStatement("SELECT * FROM ADMISSION WHERE MOBILE=? AND PASSWORD=?");
			pstmt.setString(1, username);
			pstmt.setString(2, pswd);
			res=pstmt.executeQuery();
			if(res.next())
			{
				request.setAttribute("stclass", res.getString(1));
				request.setAttribute("staadhaar", res.getString(2));
				request.setAttribute("ststudent", res.getString(3));
				request.setAttribute("stgender", res.getString(4));
				request.setAttribute("stdob", res.getString(5));
				request.setAttribute("stmobile", res.getString(6));
				request.setAttribute("stfather", res.getString(7));
				request.setAttribute("stmother", res.getString(8));
				request.setAttribute("staddress", res.getString(9));
				request.setAttribute("ststate", res.getString(10));
				request.setAttribute("stdistrict", res.getString(11));
				request.setAttribute("stpin", res.getString(12));
				request.setAttribute("stpassword", res.getString(13));
				
				request.getRequestDispatcher("StudentDashboard.jsp").forward(request, response);
			}else
			{
				response.sendRedirect("StudentLogin.jsp");
			}
		}catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("Login fail");
				
			}
		}
		
	}
