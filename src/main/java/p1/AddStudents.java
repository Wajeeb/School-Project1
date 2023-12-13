package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddStudents extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Classes=request.getParameter("Classes");
		String Aadhaar=request.getParameter("Aadhaar");
		String Student=request.getParameter("Studentfirstname")+" "+ request.getParameter("Studentmiddlename")+" "+ request.getParameter("Studentlastname");
		String Gender=request.getParameter("Selectgender");
		String Dob=request.getParameter("Dateofbirth");
		String Mobile=request.getParameter("Mobilenumber");
		String Father=request.getParameter("Fatherfirstname")+" "+ request.getParameter("Fathermiddlename")+" "+ request.getParameter("Fatherlastname");
		String Mother=request.getParameter("Motherfirstname")+" "+ request.getParameter("Mothermiddlename")+" "+ request.getParameter("Motherlastname");
		String Address=request.getParameter("Fulladdress");
		String State=request.getParameter("Selectstate");
		String District=request.getParameter("Selectdistrict");
		String Pin=request.getParameter("Pincode");
		String PASSWORD=Student.toLowerCase().replace(" ", "").substring(0, 4)+Dob.substring(0,4);
		
		Admission ad=new Admission();
		ad.setClasses(Classes);
		ad.setAadhaar(Aadhaar);
		ad.setStudent(Student);
		ad.setGender(Gender);
		ad.setDob(Dob);
		ad.setMobile(Mobile);
		ad.setFather(Father);
		ad.setMother(Mother);
		ad.setAddress(Address);
		ad.setState(State);
		ad.setDistrict(District);
		ad.setPin(Pin);
		ad.setPassword(PASSWORD);
		
		ResultSet res=ad.insertData();
		try {
		
			if(res.next())
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