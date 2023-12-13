<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*" %>    
	<%@page import="java.util.*" %>    
	<%@page import="javax.servlet.http.*" %>    
	<%@page import="javax.servlet.jsp.*" %>    
	<%@page import="oracle.jdbc.driver.OracleDriver" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateTeacher</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

</head>
<body>

				<%
				Connection con=null;
				Statement stmt=null;
				ResultSet rs=null;
				DriverManager.registerDriver(new OracleDriver());
				con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","system","system");
				stmt=con.createStatement();
				rs=stmt.executeQuery("select * from TEACHER where AADHAAR='"+request.getParameter("UTDAadhaar")+"'");
				while(rs.next())
				{
					request.setAttribute("Fullname", rs.getString(1));
					request.setAttribute("Age", rs.getString(2));
					request.setAttribute("Mobile", rs.getString(3));
					request.setAttribute("Aadhaar", rs.getString(4));
					request.setAttribute("Mail", rs.getString(5));
					request.setAttribute("Gender", rs.getString(6));
					request.setAttribute("Language", rs.getString(7));
					
					
				}
				
				%>
				
    <form action="UpdateTeachers" method="post">
    <table class="table">
    <tr>
		<td class="fw-bold">Full Name</td> 
		<td> <input type="text" class="form-control"  value="${Fullname }" name="Fullname" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Age</td> 
		<td> <input type="text" maxlength="2" class="form-control" value="${Age }"  name="Age" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Mobile</td> 
		<td> <input type="text" maxlength="10" class="form-control" value="${Mobile }"  name="Mobile" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Aadhaar</td> 
		<td> <input type="text" maxlength="12" class="form-control" value="${Aadhaar }"  name="Aadhaar" readonly></td>
    </tr>
    <tr>
		<td class="fw-bold">Mail</td> 
		<td> <input type="email" class="form-control" value="${Mail }" name="Mail" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Gender</td> 
		<td><input type="text" class="form-control" name="Gender" value="${Gender }"></td>
    </tr>
    <tr>
		<td class="fw-bold">Language</td> 
		<td><input type="text" class="form-control" name="Language" value="${Language }"></td>
    </tr>
    <tr>
    	<td colspan="2"><div class="mx-auto text-center"><button type="submit" class="btn btn-primary fw-bold">Update Teachers</button></div></td>
   	</tr>
    </table>
    </form>

</body>
</html>