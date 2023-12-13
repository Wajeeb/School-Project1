<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@page import="java.sql.*" %>
    <%@page import="oracle.jdbc.driver.OracleDriver" %>
<%
 response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
if (request.getAttribute("ststudent") == null) {
	response.sendRedirect("studentLogin.jsp");
} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${ststudent}Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
	rel="stylesheet" />
<style>

#v-pills-tab .nav-link {
	font-weight: bold;
	transition: all 0.3s ease;
}

#v-pills-tab .nav-link:hover, #v-pills-tab .nav-link.active {
	background-color: green;
	color: #ffff;
	transition: all .5s ease-in-out;
	font-size: 15px;
	box-shadow: 2px 2px 4px black;
}

#v-pills-tabContent .card:hover {
	background: palegreen;
	transition: all .5s ease-in-out;
}

#v-pills-tabContent i {
	font-size: 50px;
	font-color: black
}
</style>
 
</head>
<body>
	<div class="container_fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-success fixed-top py-3">
			<!-- Container wrapper -->
			<div class="container-fluid">
				<!-- Toggle button -->
				<button class="navbar-toggler" type="button"
					data-mdb-toggle="collapse"
					data-mdb-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="bi bi-bars"></i>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<!-- <a class="nav-link" href="#">Dashboard</a> -->
						</li>
						<li class="nav-item">
							<!-- <a class="nav-link" href="#">Team</a> -->
						</li>
						<li class="nav-item">
							<!-- <a class="nav-link" href="#">Projects</a> -->
						</li>
					</ul>
				</div>

				<!-- Right elements -->
				<div class="d-flex align-items-center">
					<!-- Icon -->
					<a class="text-reset me-3" href="#"> <i class="bi bi-cart3"></i>
					</a>

					<!-- Notifications -->
					<div class="dropdown">
						<a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-mdb-toggle="dropdown" aria-expanded="false"><i
							class="bi bi-bell"></i> <span
							class="badge rounded-pill badge-notification bg-danger">1</span>
						</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#">Some news</a></li>
							<li><a class="dropdown-item" href="#">Another news</a></li>
							<li><a class="dropdown-item" href="#">Something else here</a></li>
						</ul>
					</div>
					<!-- Avatar -->
					<div class="dropdown">
						<a class="dropdown-toggle d-flex align-items-center hidden-arrow"
							href="#" id="navbarDropdownMenuAvatar" role="button"
							data-mdb-toggle="dropdown" aria-expanded="false"> <img
							src="Photos/logo.png"
							class="rounded-circle" height="25"
							alt="Black and White Portrait of a Man" loading="lazy" />
						</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuAvatar">
							<li><a class="dropdown-item" href="#">My profile</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li><a class="dropdown-item" href="StudentLogin.jsp">Logout</a>
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
								<div class="nav flex-column nav-pills" id="v-pills-tab"
									role="tablist" aria-orientation="vertical">
									<img src="Photos/logo.png" width="100" height="100"
										class="d-inline-block align-top mx-auto my-2">
									<p class="text-center ">
										Username : ${ststudent}<br> Mobile No.: ${stmobile}
									</p>
									<a class="nav-link active" id="v-pills-dashboard-tab"
										data-mdb-toggle="pill" href="#v-pills-dashboard" role="tab"
										aria-controls="v-pills-dashboard" aria-selected="true"> <i
										class="bi bi-house me-3"></i> Dashboard
									</a> <a class="nav-link" id="v-pills-idcard-tab"
										data-mdb-toggle="pill" href="#v-pills-idcard" role="tab"
										aria-controls="v-pills-idcard" aria-selected="false"> <i
										class="bi bi-person me-3"></i> ID card
									</a> <a class="nav-link" id="v-pills-certificate-tab"
										data-mdb-toggle="pill" href="#v-pills-certificate" role="tab"
										aria-controls="v-pills-certificate" aria-selected="false">
										<i class="bi bi-pencil-square me-3"></i> Certificate
									</a> <a class="nav-link" id="v-pills-updateProfile-tab"
										data-mdb-toggle="pill" href="#v-pills-updateProfile"
										role="tab" aria-controls="v-pills-updateProfile"
										aria-selected="false"> <i class="bi bi-list-ol me-3"></i>
										My Profile
									</a> <a class="nav-link" id="v-pills-inbox-tab"
										data-mdb-toggle="pill" href="#v-pills-inbox" role="tab"
										aria-controls="v-pills-inbox" aria-selected="false"> <i
										class="bi bi-envelope me-3"></i> Complaint
									</a> <a class="nav-link" id="v-pills-fees-tab"
										data-mdb-toggle="pill" href="#v-pills-fees" role="tab"
										aria-controls="v-pills-fees" aria-selected="false"> <i
										class="bi bi-cash me-3"></i> Fees
									</a>


								</div>
								<!-- Tab navs -->
							</div>

							<div class="col-9 mt-3">
								<!-- Tab content -->
								<div class="tab-content" id="v-pills-tabContent">
									<div class="tab-pane fade show active" id="v-pills-dashboard"
										role="tabpanel" aria-labelledby="v-pills-dashboard-tab">
										<h3 class="border-bottom">Admission No.: ${regdNo}</h3>
										Dashboard
									</div>
									<div class="tab-pane fade" id="v-pills-idcard" role="tabpanel"
										aria-labelledby="v-pills-idcard-tab">Id Card</div>
									<div class="tab-pane fade" id="v-pills-certificate"
										role="tabpanel" aria-labelledby="v-pills-certificate-tab">
										Certificate</div>
									<div class="tab-pane fade" id="v-pills-updateProfile"
										role="tabpanel" aria-labelledby="v-pills-updateProfile-tab">
										<form action="dashboard.jsp">
											<table class="table align-middle mb-0 bg-white">
											<div>My Profile</div>
												<tr>
												  <th>Name</th>
												  <th>Father Name</th>
												  <th>Mother Name</th>
											  </tr>
												  <tr>
													<td><input type="text" class="form-control"  name="updname" value="${ststudent }" disabled></td>
													<td><input type="text" class="form-control" name="updfather" value="${stfather }" disabled></td>
													<td><input type="text" class="form-control" name="updmother" value="${stmother }" disabled></td>
												  </tr>
												<tr>
												  <th>Class</th>
												  <th>Date of Birth</th>
												  <th>Gender</th>
											  </tr>
												  <tr>
													<td><input type="text" class="form-control"  name="updclass" value="${stclass }" disabled></td>
													<td><input type="text" class="form-control" name="upddob" value="${stdob }" disabled></td>
													<td><input type="text" class="form-control" name="updgender" value="${stgender }" disabled></td>
												  </tr>
												<tr>
												  <th>Address</th>
												  <th>Aadhaar</th>
												  <th>Mobile</th>
											  </tr>
												  <tr>
													<td><input type="text" class="form-control"  name="updaddress" value="${staddress }" disabled></td>
													<td><input type="text" class="form-control"  name="updaddress" value="${staadhaar }" disabled></td>
													<td><input type="text" class="form-control" name="updmobile" value="${stmobile }" disabled></td>
												  </tr>
												  
												  <tr>
												  <th>State</th>
												  <th>District</th>
												  <th>Pin</th>
											  </tr>
												  <tr>
													<td><input type="text" class="form-control"  name="updstate" value="${ststate }" disabled></td>
													<td><input type="text" class="form-control"  name="upddistrict" value="${stdistrict }" disabled></td>
													<td><input type="text" class="form-control" name="updpin" value="${stpin }" disabled></td>
												  </tr>
												
												  <tr>
													<td colspan="3">
													Note: Update facilities only on office.
														<!-- <button type="submit" class="btn btn-primary">Update</button> -->
													</td>
												  </tr>
											</table>
										</form>
										
										
										</div>
									<div class="tab-pane fade" id="v-pills-inbox" role="tabpanel"
										aria-labelledby="v-pills-inbox-tab">Complaint</div>
									<div class="tab-pane fade" id="v-pills-fees" role="tabpanel"
										aria-labelledby="v-pills-fees-tab">
										
										<table class="table w-50">
										<div>Fees</div>
											<tr>
												<td>Class</td>
												<td><input class="form-control" type="text" value="${stclass}" disabled></td>
											</tr>
											<tr>
												<td>Admission No.</td>
												<td><input class="form-control" type="text" value="${adNo }" disabled></td>
											</tr>
											<tr>
												<td>Student Name</td>
												<td><input class="form-control" type="text" value="${stuser }" disabled></td>
											</tr>
											<tr>
												<td>Fees</td>
												<td>
													<select class="form-select" name="fees" id="fees">
														<option id="item0" value="">Select</option>
														<option id="monFee" value="Monthly Fee">Monthly fee</option>
														<option id="fullPay" value="Full Payment" >Full Payment</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>Amount</td>
												<td>
													<select class="form-select" name="amount" id="amount">
														<option value="">Select</option>
													</select>
													<script>
													$(document).ready(function () {
													    $("#fees").change(function () {
													        var val = $(this).val();
													        if (val == "monFee") {
													            $("#amount").html("<option value='750'>Rs. 750</option>");
													        } else if (val == "fullPay") {
													            $("#amount").html("<option value='9000'>Rs. 9000</option>");
													       /*  /* } else if (val == "bothFees") {
													            $("#amount").html("<option value='4000'>Rs. 4000</option>");
													        } else if (val == "item0")  */{
													            $("#amount").html("<option value=''>--select one--</option>"); */
													        }
													    });
													});
													/* $(document).ready(function() {
												
														if( $("#fees").val("admFee"))
														{
														  $("#amount").html("<option value='2500'>Rs. 2500</option>");
														}
														else if( $("#fees").val("regdFee"))
														{
														   $("#amount").html("<option value='1500'>Rs. 1500</option>");
														}else
															{
																 $("#amount").html("<option value='4000'>Rs. 4000</option>");
															}
												
														}); */
													</script>
												</td>

											</tr>
											<tr>
												<td><button type="submit" class="btn btn-primary">Pay</button></td>
											</tr>
										</table>
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
</body>
</html>

