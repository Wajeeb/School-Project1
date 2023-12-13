<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="oracle.jdbc.driver.OracleDriver" %>
<!DOCTYPE html>
<html>
	<head>
	
	<%
	response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
	if (session.getAttribute("username") == null) 
	{
		response.sendRedirect("AdminLogin.jsp");
	}
	
	%>
	
	
		<meta charset="UTF-8">
		<title>Dashboard</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"  rel="stylesheet"/>
	<style>
		#v-pills-tab .nav-link {
			font-weight: bold;
			transition: all 0.3s ease;
		}
		#v-pills-tab .nav-link:hover, #v-pills-tab .nav-link.active {
			background-color: orange;
			color: #fff;
			transition: all .5s ease-in-out;
			font-size: 15px;
			box-shadow: 2px 2px 2px black;
		}
		#v-pills-tabContent .card:hover{
			background: palegreen;
			transition: all .5s ease-in-out;
		}
		
	</style>
	
			<%
		response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
		if (session.getAttribute("username") == null) 
		{
			response.sendRedirect("AdminLogin.jsp");
		}
		%>
			
			
			<% Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			PreparedStatement ps=null;
			
			try{
				DriverManager.registerDriver(new OracleDriver());
				con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","system","system");
			
			%>

    
	</head>
	<body>
		<div class="container_fluid">
							<nav class="navbar navbar-expand-lg navbar-light bg-success fixed-top py-3">
							  <!-- Container wrapper -->
							  <div class="container-fluid">
							    <!-- Toggle button -->
							    <button class="navbar-toggler"
							      type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
							      aria-controls="navbarSupportedContent"   aria-expanded="false"
							      aria-label="Toggle navigation">
							      <i class="bi bi-bars"></i>
							    </button>
							
							    <!-- Collapsible wrapper -->
							    <div class="collapse navbar-collapse" id="navbarSupportedContent">
							      <!-- Left links -->
							      <!-- <ul class="navbar-nav me-auto mb-2 mb-lg-0">
							        <li class="nav-item">
							          <a class="nav-link" href="#">Dashboard</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link" href="#">Team</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link" href="#">Projects</a>
							        </li>
							      </ul> -->
							      <!-- Left links -->
							    </div>
							    <!-- Collapsible wrapper -->
							
							    <!-- Right elements -->
							    <div class="d-flex align-items-center">
							      <!-- Icon -->
							      <a class="text-reset me-3" href="#">
							        <i class="bi bi-cart3"></i>
							      </a>
							
							      <!-- Notifications -->
							      <div class="dropdown">
							        <a class="text-reset me-3 dropdown-toggle hidden-arrow"
							          href="#" id="navbarDropdownMenuLink" role="button"
							          data-mdb-toggle="dropdown" aria-expanded="false">
							          <i class="bi bi-bell"></i>
							          <span class="badge rounded-pill badge-notification bg-danger">1</span>
							        </a>
							        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
							          <li>
							            <a class="dropdown-item" href="#">Some news</a>
							          </li>
							          <li>
							            <a class="dropdown-item" href="#">Another news</a>
							          </li>
							          <li>
							            <a class="dropdown-item" href="#">Something else here</a>
							          </li>
							        </ul>
							      </div>
							      <!-- Avatar -->
							      <div class="dropdown">
							        <a  class="dropdown-toggle d-flex align-items-center hidden-arrow"
							          href="#" id="navbarDropdownMenuAvatar" role="button" data-mdb-toggle="dropdown"
							          aria-expanded="false">
							          <img src="Photos/logo.png" class="rounded-circle"
							            height="25" alt="Black and White Portrait of a Man" loading="lazy"/>
							        </a>
							        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuAvatar">
							          <li>
							            <a class="dropdown-item" href="#">My profile</a>
							          </li>
							          <li>
							            <a class="dropdown-item" href="#">Settings</a>
							          </li>
							          <li>
							            <a class="dropdown-item" href="AdminLogin.jsp">Logout</a>
							          </li>
							        </ul>
							      </div>
							    </div>
							    <!-- Right elements -->
							  </div>
							  <!-- Container wrapper -->
							</nav>
							<!-- Navbar -->
			<div class="row">
				<div class="col">
					<div class="card">
						<div class="card-header d-flex">
							<!-- Navbar -->
								
						</div>
						<div class="card-body">
							<div class="row">
									
							  <div class="col-3 bg-success py-2 mt-3">
							    <!-- Tab navs -->
							    <div class="nav flex-column nav-pills"
							      id="v-pills-tab" role="tablist" aria-orientation="vertical">
							      <img src="Photos/logo.png" width="100" height="100" class="d-inline-block align-top mx-auto my-2">
							      <a class="nav-link active" id="v-pills-dashboard-tab" data-mdb-toggle="pill"
							        href="#v-pills-dashboard" role="tab" aria-controls="v-pills-dashboard" aria-selected="true">
							        <i class="bi bi-house me-3"></i>
							        Dashboard</a>
							      <a class="nav-link" id="v-pills-student-tab" data-mdb-toggle="pill"
							        href="#v-pills-student" role="tab" aria-controls="v-pills-student"
							        aria-selected="false">
							        <i class="bi bi-person me-3"></i> Student</a>
							      <a class="nav-link" id="v-pills-teacher-tab" data-mdb-toggle="pill"
							        href="#v-pills-teacher" role="tab" aria-controls="v-pills-teacher"
							        aria-selected="false">
							        <i class="bi bi-person me-3"></i> Teacher</a>
							      <a class="nav-link" id="v-pills-exam-tab" data-mdb-toggle="pill"
							        href="#v-pills-exam" role="tab" aria-controls="v-pills-exam"
							        aria-selected="false">
							        <i class="bi bi-pencil-square me-3"></i> Exam</a>
							        <a class="nav-link" id="v-pills-notice-tab" data-mdb-toggle="pill"
							        href="#v-pills-notice" role="tab" aria-controls="v-pills-notice"
							        aria-selected="false">
							        <i class="bi bi-list-ol me-3"></i> Notice</a>
							        
							        <a class="nav-link" id="v-pills-fees-tab" data-mdb-toggle="pill"
							        href="#v-pills-fees" role="tab" aria-controls="v-pills-fees"
							        aria-selected="false">
							        <i class="bi bi-cash me-3"></i> Fees</a>
							        
							        <a class="nav-link" id="v-pills-settings-tab" data-mdb-toggle="pill"
							        href="#v-pills-settings" role="tab" aria-controls="v-pills-settings"
							        aria-selected="false">
							        <i class="bi bi-gear me-3"></i> Settings</a>
							        
							    </div>
							    <!-- Tab navs -->
							  </div>
							  
							  
							  <%
							  	int i=0;
							  try{
								  stmt=con.createStatement();
								  rs=stmt.executeQuery("select * from ADMISSION");
								  while(rs.next())
								  {
									  i++;
								  }
							  
							  %>
							
							  <div class="col-9 mt-3">
							    <!-- Tab content -->
							    <div class="tab-content" id="v-pills-tabContent">
							      <div class="tab-pane fade show active" id="v-pills-dashboard"
							        role="tabpanel" aria-labelledby="v-pills-dashboard-tab">
							        
							        <div class="container">
										<div class="row row-cols-1 row-cols-md-6 g-4 text-center">
											<div class="col mb-2">
												<div class="card">
													<div class="card-body">
													<h4 class="card-title display-5 fw-bold" >
													<%=i%></h4><%
							  }catch(Exception e)
							  {
								  e.printStackTrace();
							  }
								%>		
											
														<p class="fw-bold">Total Students</p>
														
													</div>
												</div>
											</div>
											
								
								
								 
							  <%
							  	int tea=0;
							  try{
								  stmt=con.createStatement();
								  rs=stmt.executeQuery("select * from TEACHER");
								  while(rs.next())
								  {
									  tea++;
								  }
							  
							  %>			
											
											<div class="col mb-2">
												<div class="card">
													<div class="card-body">
													<h4 class="card-title display-5 fw-bold" >
													<%=tea%></h4><%
							  }catch(Exception e)
							  {
								  e.printStackTrace();
							  }
								%>		
														<p class="fw-bold">Total Teachers</p>
														
													</div>
												</div>
											</div>
											
										</div>
									</div>
							      </div>
							      <div class="tab-pane fade fw-bold" id="v-pills-student" role="tabpanel"
							        aria-labelledby="v-pills-student-tab" >
							        Total Students:- <% %>
							        <!-- Tabs navs -->
<ul class="nav nav-tabs mb-3" id="ex-with-icons" role="tablist">
  <!-- <li class="nav-item" role="presentation">
    <a class="nav-link active" id="ex-with-icons-tab-1" data-mdb-toggle="tab" href="#ex-with-icons-tabs-1" role="tab"
      aria-controls="ex-with-icons-tabs-1" aria-selected="true"><i class="bi bi-chart-pie fa-fw me-2"></i>Fees pending</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="ex-with-icons-tab-2" data-mdb-toggle="tab" href="#ex-with-icons-tabs-2" role="tab"
      aria-controls="ex-with-icons-tabs-2" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>Fees received</a>
  </li> -->
  <li class="nav-item" role="presentation">
    <a class="nav-link fw-bolder" id="ex-with-icons-tab-3" data-mdb-toggle="tab" href="#ex-with-icons-tabs-3" role="tab"
      aria-controls="ex-with-icons-tabs-3" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>All Student</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link fw-bolder" id="ex-with-icons-tab-4" data-mdb-toggle="tab" href="#ex-with-icons-tabs-4" role="tab"
      aria-controls="ex-with-icons-tabs-4" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>Add Student</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link fw-bolder" id="ex-with-icons-tab-5" data-mdb-toggle="tab" href="#ex-with-icons-tabs-5" role="tab"
      aria-controls="ex-with-icons-tabs-5" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>Update</a>
  </li>
  
</ul>
<!-- Tabs navs -->

<!-- Tabs content -->
<div class="tab-content" id="ex-with-icons-content">
  <div class="tab-pane fade" id="ex-with-icons-tabs-3" role="tabpanel" aria-labelledby="ex-with-icons-tab-3">
   <div    data-mdb-spy="scroll"    data-mdb-target="#scrollspy1"     data-mdb-offset="0"    class="scrollspy-example" style="position:relative;height:100%;overflow:auto;">
    <table class=" table align-middle mb-0 bg-white">
  <thead class="bg-light">
    <tr class="bg-success text-light">
      <th class="fw-bold" >CLASSES</th>
      <th class="fw-bold" >AADHAAR</th>
      <th class="fw-bold" >STUDENT</th>
      <th class="fw-bold" >GENDER</th>
      <th class="fw-bold" >DOB</th>
      <th class="fw-bold" >MOBILE</th>
	  <th class="fw-bold" >FATHER</th>
	  <th class="fw-bold" >MOTHER</th>
	  <th class="fw-bold" >ADDRESS</th>
	  <th class="fw-bold" >STATE</th>
	  <th class="fw-bold" >DISTRICT</th>
	  <th class="fw-bold" >PIN</th>
	  <th class="fw-bold" >PASSWORD</th>
	  <th class="fw-bold" >ACTION</th>
    </tr>
  </thead>
  <tbody>
  <%
  try{
  			stmt=con.createStatement();
  			rs=stmt.executeQuery("select * from ADMISSION");
  			while(rs.next())
  			{
  
  %>
    <tr>
    	<td><%=rs.getString(1) %></td>
    	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(4) %></td>
    	<td><%=rs.getString(5) %></td>
    	<td><%=rs.getString(6) %></td>
    	<td><%=rs.getString(7) %></td>
    	<td><%=rs.getString(8) %></td>
    	<td><%=rs.getString(9) %></td>
    	<td><%=rs.getString(10) %></td>
    	<td><%=rs.getString(11) %></td>
    	<td><%=rs.getString(12) %></td>
    	<td><%=rs.getString(13) %></td>
    	
    <td>
	    <form action="DeleteStudent" method="post">
	    <input type="hidden" name="delID" value="<%=rs.getString(2) %>">
		<input type="submit" value="Delete" class="btn btn-danger">
		</form>
	
		</td>
    </tr>
  <%
  	}
  	}catch(Exception e)
  		{
  		e.printStackTrace();
  		}
  
			}catch (Exception ex){
				
			}
  %>
    
  </tbody>
</table>
</div>
  </div>
  <div class="tab-pane fade" id="ex-with-icons-tabs-4" role="tabpanel" aria-labelledby="ex-with-icons-tab-4">
    <div class="row">
    	<div class="col">
    	<form action="AddStudents" method="post">
		<div class="m-5 shadow-lg bg-light rounded">
			<table class="table align-middle mb-0 bg-white">
	<tr>
	<td colspan="1" class="fw-bold">Class:-</td>
		<td>
			<select class="form-control" name="Classes">
			<option>Select Class</option>
			<option>L. KG</option>
			<option>U. KG</option>
			<option>I</option>
			<option>II</option>
			<option>III</option>
			<option>IV</option>
			<option>V</option>
			<option>VI</option>
			<option>VII</option>
			<option>VIII</option>
			<option>IX</option>
			<option>X</option>
			</select>
		</td>
		<td><input type="text" maxlength="12" class="form-control" placeholder="Aadhaar Number" name="Aadhaar" required></td>
		</tr>
	
		<tr>
			<td colspan="3" class="fw-bold">Name:</td>
		</tr>
		
		<tr>
		<td><input type="text" class="form-control" placeholder="Last Name" name="Studentlastname" required></td>
		<td><input type="text" class="form-control" placeholder="Middle Name" name="Studentmiddlename"></td>
		<td><input type="text" class="form-control" placeholder="First Name" name="Studentfirstname"></td>
		</tr>
		
		<tr>
		<td>
			<select class="form-control" name="Selectgender">
			<option>Select Gender</option>
			<option>Male</option>
			<option>Female</option>
			<option>Transgender</option>
			</select>
		</td>
		
		<td><input type="date" class="form-control" name="Dateofbirth" required></td>
		<td><input type="text" maxlength="10" class="form-control" placeholder="Mobile Number" name="Mobilenumber" required></td>

		</tr>
		
		<tr>
			<td colspan="3" class="fw-bold">Father's Name:</td>
		</tr>
		
		<tr>
		<td><input type="text" class="form-control" placeholder="Last Name" name="Fatherlastname" required></td>
		<td><input type="text" class="form-control" placeholder="Middle Name" name="Fathermiddlename"></td>
		<td><input type="text" class="form-control" placeholder="First Name" name="Fatherfirstname"></td>
		</tr>
		
		<tr>
			<td colspan="3" class="fw-bold">Mother's Name:</td>
		</tr>
		
		<tr>
		<td><input type="text" class="form-control" placeholder="Last Name" name="Motherlastname" required></td>
		<td><input type="text" class="form-control" placeholder="Middle Name" name="Mothermiddlename"></td>
		<td><input type="text" class="form-control" placeholder="First Name" name="Motherfirstname"></td>
		</tr>
		
		<tr>
			<td colspan="3" class="fw-bold">Permanent Address:</td>
		</tr>
			
		<tr>
			<td colspan="3"><input type="text" class="form-control" placeholder="Full Address" name="Fulladdress" required></td>		
		</tr>
		
		<tr>
		<td>
			<select class="form-control" name="Selectstate">
			<option>Select State</option>
			<option>Manipur</option>
			<option>Other</option>
			</select>
		</td>
		
		<td>
			<select class="form-control" name="Selectdistrict">
			<option>Select District</option>
			<option>Bishnupur</option>
			<option>Chandel</option>
			<option>Churachandpur</option>
			<option>Imphal East</option>
			<option>Imphal West</option>
			<option>Senapati</option>
			<option>Thoubal</option>
			<option>Kakching</option>
			<option>Jiribam</option>
			<option>Kamjong</option>
			<option>Kangpokpi</option>
			<option>Tengnoupal</option>
			<option>Tamenglong</option>
			<option>Ukhrul</option>
			<option>Noney</option>
			<option>Pherzawl</option>
			</select>
		</td>
		<td><input type="text" maxlength="6" class="form-control" placeholder="PIN CODE" name="Pincode" required></td>
		</tr>
			  <tr>
			  <td></td>
				<td>
					<button type="submit" class="btn btn-primary w-100 fw-bolder">Add Student</button>
				</td>
			  <td></td>
			  </tr>
			  
			</table>
			  </div>
		</form>
		
    </div>
    
  </div>
  </div>
  <div class="tab-pane fade" id="ex-with-icons-tabs-5" role="tabpanel" aria-labelledby="ex-with-icons-tab-5">
    
    <div    data-mdb-spy="scroll"    data-mdb-target="#scrollspy1"     data-mdb-offset="0"    class="scrollspy-example" style="position:relative;overflow:auto;">
    <div class="row">
    	<div class="col">
    	<h5 class="fw-bold">Update</h5>
    	<form action="UpdateStudent.jsp" method="post" target="myframe">
			<table class="table align-middle mb-0 bg-white w-100">
			  <thead class="bg-light">
				<tr class="bg-success fw-bold text-light text-center">
				  <th class="fw-bold" style="text-align-center">Aadhaar</th>
				  <td> <input type="text" maxlength="12" name="UIDAadhaar" placeholder="Aadhaar" class="form-control" required></td>
				  <td><button type="submit" class="btn btn-primary fw-bolder">Check</button></td>
			  </tr>
			  </thead>
			</table>
		</form>
    </div>
  </div>
  
  <iframe src="" name="myframe" id="myframe" style="display:block;" width="100%" height="500px"></iframe>
  
  </div>
</div>

<!-- Tabs content -->
							        </div>
							        
							      </div>
							      <div class="tab-pane fade fw-bold" id="v-pills-teacher"role="tabpanel" 
							        aria-labelledby="v-pills-teacher-tab" >
							        
							        Total Teachers:-
							        
							        <ul class="nav nav-tabs mb-3" id="ex-with-icons" role="tablist">
									  <li class="nav-item" role="presentation">
									    <a class="nav-link fw-bolder" id="ex-with-icons-tab-6" data-mdb-toggle="tab" href="#ex-with-icons-tabs-6" role="tab"
									      aria-controls="ex-with-icons-tabs-3" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>All Teacher</a>
									  </li>
									  <li class="nav-item" role="presentation">
									    <a class="nav-link fw-bolder" id="ex-with-icons-tab-7" data-mdb-toggle="tab" href="#ex-with-icons-tabs-7" role="tab"
									      aria-controls="ex-with-icons-tabs-4" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>Add Teacher</a>
									  </li>
									  <li class="nav-item" role="presentation">
									    <a class="nav-link fw-bolder" id="ex-with-icons-tab-8" data-mdb-toggle="tab" href="#ex-with-icons-tabs-8" role="tab"
									      aria-controls="ex-with-icons-tabs-5" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>Update Teacher</a>
									  </li>
									</ul>
							        <div class="tab-content" id="ex-with-icons-content">
  <div class="tab-pane fade show active" id="ex-with-icons-tabs-6" role="tabpanel" aria-labelledby="ex-with-icons-tab-6">
   <div    data-mdb-spy="scroll"    data-mdb-target="#scrollspy1"     data-mdb-offset="0"    class="scrollspy-example" style="position:relative;height:100%;overflow:auto;">
   <table class="table align-middle mb-0 bg-white">
  <thead class="bg-light">
    <tr class="bg-success text-light">
      <th class="fw-bold" >FULLNAME</th>
      <th class="fw-bold" >AGE</th>
      <th class="fw-bold" >MOBILE</th>
      <th class="fw-bold" >AADHAAR</th>
      <th class="fw-bold" >MAIL</th>
      <th class="fw-bold" >GENDER</th>
	  <th class="fw-bold" >LANGUAGE</th>
	  <th class="fw-bold" >PASSWORD</th>
	  <th class="fw-bold" >ACTION</th>
    </tr>
  </thead>
  <tbody>
  <%
  try{
  			stmt=con.createStatement();
  			rs=stmt.executeQuery("select * from TEACHER");
  			while(rs.next())
  			{
  
  %>
    <tr>
    	<td><%=rs.getString(1) %></td>
    	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(4) %></td>
    	<td><%=rs.getString(5) %></td>
    	<td><%=rs.getString(6) %></td>
    	<td><%=rs.getString(7) %></td>
    	<td><%=rs.getString(8) %></td>
    	
    <td>
	    <form action="DeleteTeacher" method="post">
	    <input type="hidden" name="delIDTea" value="<%=rs.getString(4) %>">
		<input type="submit" value="Delete" class="btn btn-danger">
		</form>
	
		</td>
    </tr>
  <%
  	}
  	}catch(Exception e)
  		{
  		e.printStackTrace();
  		}
  %>
    
  </tbody>
</table>
</div>
  </div>
  
  <div class="tab-pane fade" id="ex-with-icons-tabs-7" role="tabpanel" aria-labelledby="ex-with-icons-tab-7">
    <div class="row w-50 mx-auto">
    <form action="AddTeachers" method="post">
    <table class="table">
    <tr>
		<td class="fw-bold">Full Name</td> 
		<td> <input type="text" class="form-control" placeholder="Enter Your Name"  name="Fullname" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Age</td> 
		<td> <input type="text" maxlength="2" class="form-control" placeholder="Enter Year of Birth"  name="Age" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Mobile</td> 
		<td> <input type="text" maxlength="10" class="form-control" placeholder="Enter Your Mobile Number"  name="Mobile" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Aadhaar</td> 
		<td> <input type="text" maxlength="12" class="form-control" placeholder="Enter Your Aadhaar Number"  name="Aadhaar" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Mail</td> 
		<td> <input type="email" class="form-control" placeholder="Enter Your Email" name="Mail" required></td>
    </tr>
    <tr>
		<td class="fw-bold">Gender</td> 
		<td><input type="radio" class="" name="Gender" value="Male" checked> Male
		<input type="radio" class="" name="Gender" value="Female"> Female</td>
    </tr>
    <tr>
		<td class="fw-bold">Language</td> 
		<td><input type="checkbox" class="" name="Language1" value="English" required> English
		<input type="checkbox" class="" name="Language2" value="Hindi"> Hindi
		<input type="checkbox" class="" name="Language3" value="Urdu"> Urdu
		</td>
    </tr>
    <tr>
		<td class="fw-bold">Password</td> 
		<td> <input type="password" class="form-control" name="crpassword" placeholder="Password" required></td>
    </tr>
    <tr>
		<td></td>    
		<td> <input type="text" class="form-control" name="copassword" placeholder="Confirm Password" required></td>
    </tr>
    <tr>
    	<td colspan="2"><div class="mx-auto text-center"><button type="submit" class="btn btn-primary fw-bold">Add Teachers</button></div></td>
   	</tr>
    </table>
    </form>
    </div>
  </div>
  
  <div class="tab-pane fade" id="ex-with-icons-tabs-8" role="tabpanel" aria-labelledby="ex-with-icons-tab-8">
   
   <div data-mdb-spy="scroll"    data-mdb-target="#scrollspy1"     data-mdb-offset="0"    class="scrollspy-example" style="position:relative;overflow:auto;">
    <div class="row">
    <div class="col">
    	<h5 class="fw-bold">Update</h5>
    	<form action="UpdateTeacher.jsp" method="post" target="myframe1">
			<table class="table align-middle mb-0 bg-white w-100">
			  <thead class="bg-light">
				<tr class="bg-success fw-bold text-light text-center">
				  <th class="fw-bold" style="text-align-center">Aadhaar</th>
				  <td> <input type="text" maxlength="12" name="UTDAadhaar" placeholder="Aadhaar" class="form-control" required></td>
				  <td><button type="submit" class="btn btn-primary fw-bolder">Check</button></td>
			  </tr>
			  </thead>
			</table>
		</form>
    </div>
  </div>
  <iframe src="UpdateTeacher.jsp" name="myframe1" id="myframe1" style="display:block;" width="100%" height="500px"></iframe>
  </div>
   
   
  </div>
  </div>
							   
							   
							   
							   
							    </div>
							      <div class="tab-pane fade" id="v-pills-exam"role="tabpanel" 
							        aria-labelledby="v-pills-exam-tab" >
							        Exam content
							        <!-- Tabs navs -->
								<ul class="nav nav-tabs mb-3" id="ex-with-icons" role="tablist">
								  <li class="nav-item" role="presentation">
								    <a class="nav-link active" id="ex-with-icons-tab-11" data-mdb-toggle="tab" href="#ex-with-icons-tabs-11" role="tab"
								      aria-controls="ex-with-icons-tabs-11" aria-selected="true"><i class="bi bi-chart-pie fa-fw me-2"></i>CLASS - L. KG</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-22" data-mdb-toggle="tab" href="#ex-with-icons-tabs-22" role="tab"
								      aria-controls="ex-with-icons-tabs-22" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - U. KG</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-33" data-mdb-toggle="tab" href="#ex-with-icons-tabs-33" role="tab"
								      aria-controls="ex-with-icons-tabs-33" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - I</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-44" data-mdb-toggle="tab" href="#ex-with-icons-tabs-44" role="tab"
								      aria-controls="ex-with-icons-tabs-44" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - II</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-55" data-mdb-toggle="tab" href="#ex-with-icons-tabs-55" role="tab"
								      aria-controls="ex-with-icons-tabs-55" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - III</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-66" data-mdb-toggle="tab" href="#ex-with-icons-tabs-66" role="tab"
								      aria-controls="ex-with-icons-tabs-66" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - IV</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-77" data-mdb-toggle="tab" href="#ex-with-icons-tabs-77" role="tab"
								      aria-controls="ex-with-icons-tabs-77" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - V</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-88" data-mdb-toggle="tab" href="#ex-with-icons-tabs-88" role="tab"
								      aria-controls="ex-with-icons-tabs-88" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - VI</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-99" data-mdb-toggle="tab" href="#ex-with-icons-tabs-99" role="tab"
								      aria-controls="ex-with-icons-tabs-99" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - VII</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-100" data-mdb-toggle="tab" href="#ex-with-icons-tabs-100" role="tab"
								      aria-controls="ex-with-icons-tabs-100" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - VIII</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-101" data-mdb-toggle="tab" href="#ex-with-icons-tabs-101" role="tab"
								      aria-controls="ex-with-icons-tabs-101" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - IX</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-102" data-mdb-toggle="tab" href="#ex-with-icons-tabs-102" role="tab"
								      aria-controls="ex-with-icons-tabs-102" aria-selected="false"><i class="bi bi-chart-line fa-fw me-2"></i>CLASS - X</a>
								  </li>
								  <li class="nav-item" role="presentation">
								    <a class="nav-link" id="ex-with-icons-tab-103" data-mdb-toggle="tab" href="#ex-with-icons-tabs-103" role="tab"
								      aria-controls="ex-with-icons-tabs-103" aria-selected="false"><i class="bi bi-cogs fa-fw me-2"></i>Add Results</a>
								  </li>
								</ul>
								<!-- Tabs navs -->
								<!-- Tabs content -->
								<div class="tab-content" id="ex-with-icons-content">
								  <div class="tab-pane fade show active" id="ex-with-icons-tabs-11" role="tabpanel" aria-labelledby="ex-with-icons-tab-11">
								    <table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										 
										    <tr>
										      
										    </tr>
										    
										  </tbody>
										</table>
								  </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-22" role="tabpanel" aria-labelledby="ex-with-icons-tab-22">
								   <table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										 
										    <tr>
										      
										    </tr>
										   
										  </tbody>
										</table>
								  </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-33" role="tabpanel" aria-labelledby="ex-with-icons-tab-33">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-44" role="tabpanel" aria-labelledby="ex-with-icons-tab-44">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-55" role="tabpanel" aria-labelledby="ex-with-icons-tab-55">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-66" role="tabpanel" aria-labelledby="ex-with-icons-tab-66">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-77" role="tabpanel" aria-labelledby="ex-with-icons-tab-77">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-88" role="tabpanel" aria-labelledby="ex-with-icons-tab-88">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-99" role="tabpanel" aria-labelledby="ex-with-icons-tab-99">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-100" role="tabpanel" aria-labelledby="ex-with-icons-tab-100">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-102" role="tabpanel" aria-labelledby="ex-with-icons-tab-101">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-102" role="tabpanel" aria-labelledby="ex-with-icons-tab-102">
								    
							      </div>
								  <div class="tab-pane fade" id="ex-with-icons-tabs-103" role="tabpanel" aria-labelledby="ex-with-icons-tab-103">
								   
								   <h5>CLASS - L. KG</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
								    <h5>CLASS - U. KG</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - I</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - II</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - III</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - IV</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - V</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - VI</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - VII</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - VIII</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - IX</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
									<h5>CLASS - X</h5>
							    	<form action="ExamResult" method="post">
										<table class="table align-middle mb-0 bg-white">
										  <thead class="bg-light">
											<tr>
											  <th>Admission No.</th>
											  <th>Name</th>
											  <th>Exam Name</th>
											  <th>Obtained Marks</th>
											  <th>Total Marks</th>
											  <th>Rank</th>
										  </tr>
										  </thead>
										  <tbody>
										  <tr>
										  	<td><input type="text" class="form-control" placeholder="" name="resregd"></td>
											<td><input type="text" class="form-control" placeholder="" name="resname"></td>
											<td><input type="text" class="form-control" placeholder="" value="" name="resexam"></td>
											<td><input type="text" class="form-control" placeholder="" name="resobtmark"></td>
											<td><input type="text" class="form-control" placeholder="" name="restotal"></td>
											<td><input type="text" class="form-control" placeholder="" name="resrank"></td>
										  </tr>
										  <tr>
											<td colspan="3">
												<button type="submit" class="btn btn-primary">Add</button>
											</td>
										  </tr>
										  </tbody>
										</table>
									</form>
									
							      </div>
								  </div>
								</div>
							        
							        
							      <div class="tab-pane fade" id="v-pills-notice" role="tabpanel"
							        aria-labelledby="v-pills-notice-tab">
							        Notice content
							        <form action="UpdateRegd" method="post">
									<table class="table align-middle mb-0 bg-white">
									  <thead class="bg-light">
										<tr>
										  <th>Notice</th>
									  </tr>
									  </thead>
									  <tbody>
									  <tr>
									  	<td>
											<div class="form-outline">
											  <textarea class="form-control" id="textAreaExample" rows="4"></textarea>
											  <label class="form-label" for="textAreaExample">Message</label>
											</div>
										</td>
									  </tr>
									  <tr>
										<td colspan="3">
											<button type="submit" class="btn btn-primary">Add</button>
										</td>
									  </tr>
									  </tbody>
									</table>
								</form>
							        <form action="UpdateRegd" method="post">
									<table class="table align-middle mb-0 bg-white">
									  <thead class="bg-light">
										<tr>
										  <th>File upload</th>
									  </tr>
									  </thead>
									  <tbody>
									  <tr>
									  	<td>
											<input type="file" class="form-control" >
										</td>
									  </tr>
									  <tr>
										<td colspan="3">
											<button type="submit" class="btn btn-primary">Add</button>
										</td>
									  </tr>
									  </tbody>
									</table>
								</form>

							      </div>
							      
							      <div class="tab-pane fade" id="v-pills-fees" role="tabpanel"
							      aria-labelledby="v-pills-fees-tab">
							        Fees content
							        </div>
							      
							      <div class="tab-pane fade" id="v-pills-settings" role="tabpanel"
							        aria-labelledby="v-pills-settings-tab">
							        Settings content
							      </div>
							    </div>
							    <!-- Tab content -->
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="text-center px-3 pt-3 d-flex justify-content-between" style="background: rgba(0, 0, 0, 0.5)">
	     <p class="text-white" >Powered by: <img src="Photos/eShine-noborder.png" width="40px" height="30px"> Technology</p>
	     <div class="text-white"> &copy; 2023 Copyright: <a class="text-white" style="text-decoration:none" href="https://gessora.com/">www.gessora.com</a></div>
	      <div class="text-white">Privacy | Terms &amp; Conditions</div>
	    </div>	
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	</body>
</html>