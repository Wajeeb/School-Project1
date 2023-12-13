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
<title>UpdateStudent</title>
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
				rs=stmt.executeQuery("select * from ADMISSION where AADHAAR='"+request.getParameter("UIDAadhaar")+"'");
				while(rs.next())
				{
					request.setAttribute("Classes", rs.getString(1));
					request.setAttribute("Aadhaar", rs.getString(2));
					request.setAttribute("Student", rs.getString(3));
					request.setAttribute("Selectgender", rs.getString(4));
					request.setAttribute("Dateofbirth", rs.getString(5));
					request.setAttribute("Mobilenumber", rs.getString(6));
					request.setAttribute("Fathername", rs.getString(7));
					request.setAttribute("Mothername", rs.getString(8));
					request.setAttribute("Fulladdress", rs.getString(9));
					request.setAttribute("Selectstate", rs.getString(10));
					request.setAttribute("Selectdistrict", rs.getString(11));
					request.setAttribute("Pincode", rs.getString(12));
					request.setAttribute("Password", rs.getString(13));
					
				}
				
				%>
				
				<form action="UpdateStudent" method="post">
		<div class="m-5 shadow-lg bg-light rounded">
			<table class="table align-middle mb-0 bg-white">
		<tr>
			<td class="fw-bold">Class:-</td>
			<td>
				<input type="text" class="form-control" value="${Classes }" name="UClasses" required>
			</td>
		</tr>
		<tr>
			<td class="fw-bold">Aadhaar</td>
			<td><input type="text" maxlength="12" class="form-control" value="${Aadhaar }" name="UAadhaar" readonly></td>
		</tr>
		<tr>
			<td class="fw-bold">Name:</td>
			<td><input type="text" class="form-control" value="${Student }" name="UStudent" required></td>
		</tr>
		<tr>
			<td class="fw-bold">Gender:</td>	
			<td>
				<input type="text" class="form-control" value="${Selectgender }" name="UGender" required>
			</td>
		</tr>
		
		<tr>
			<td class="fw-bold">Date of Birth:</td>
			<td><input type="date" class="form-control" value="${Dateofbirth }" name="UDateofbirth" required></td>
		</tr>
		<tr>
			<td class="fw-bold">Mobile Number:</td>
			<td><input type="text" maxlength="10" class="form-control" value="${Mobilenumber}" name="UMobilenumber" required></td>
		</tr>
		<tr>
			<td  class="fw-bold">Father's Name:</td>
			<td colspan="2"><input type="text" class="form-control" value="${Fathername }" name="UFathername" required></td>
		</tr>
		
		<tr>
			<td class="fw-bold">Mother's Name:</td>
			<td colspan="2"><input type="text" class="form-control" value="${Mothername }" name="UMothername"></td>
		</tr>
		
		<tr>
			<td class="fw-bold">Permanent Address:</td>
			<td colspan="2"><input type="text" class="form-control" value="${Fulladdress }" name="UFulladdress" required></td>		
		</tr>
			
		<tr>
		<td class="fw-bold">State</td>
		<td>
			<input type="text" class="form-control" value="${Selectstate }" name="USelectstate">
		</td>
		</tr>
		<tr>
			<td class="fw-bold">District</td>
		<td>
			<input type="text" class="form-control" value="${Selectdistrict }" name="USelectdistrict">
		</td>
		</tr>
			  <tr>
				<td class="fw-bold">Pincode</td>
				<td><input type="text" maxlength="6" class="form-control" value="${Pincode }" name="UPincode" required></td>
			  </tr>
			  <tr>
			  <td class="fw-bold">Password</td>
			  <td><input type="text" class="form-control" value="${Password }" name="UPassword" required></td>
				</tr>
				<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-primary w-100 fw-bolder">Update</button>
				</td>
			  </tr>
			  
			</table>
			  </div>
		</form>

</body>
</html>