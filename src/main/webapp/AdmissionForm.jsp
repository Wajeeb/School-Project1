<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdmissionForm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
 <style>
  .nav-link 
  
  {
  	color:white;
  }
  	
  .navbar-brand
  {
  	color:white;
  	  }
  	  
  body{
  	background:url(Photos/body.jpg);
  	background-size: cover;
  	background-position: center;
  	background-attahchment:fixed
  	  }
  
  a{
  	text-decoration: none;
  }
  
  </style>
 </head>
<body>

<div class="m-5 shadow-lg bg-light rounded">
 
	
	<div class="container_fluid" style="background-color: transparent; box-shadow: 4px 5px 8px rgb(255, 0, 0), -4px -5px 8px rgb(0, 255, 0);">
	<div class="text-center fw-bold fs-3 bg-primary pt-4 text-light" style="height: 100px; border-radius: 6px; text-align: center; box-shadow: 4px 5px 8px rgb(255, 0, 0), -4px -5px 8px rgb(0, 255, 0);" >ADMISSION FORM 2024-2025</div>
	<form action="Admissionkey" method="post" class="p-5">
	<table class="table">
	
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
			<td colspan="3"><div id="Fullname" class="text-light px-2 fw-bold"></div>
			<script type="text/javascript">
			const input1 = document.getElementsByTagName("input")[1];
			const input2 = document.getElementsByTagName("input")[2];
			const input3 = document.getElementsByTagName("input")[3];
			
			const res=document.getElementById("Fullname");
			
			input1.addEventListener("change", function()
					{
				res.innerHTML=input3.value+" "+input2.value+" "+input1.value;
				res.style.background="blue";
					});
			input2.addEventListener("change", function()
					{
				res.innerHTML=input3.value+" "+input2.value+" "+input1.value;
				res.style.background="blue";
					});
			input3.addEventListener("change", function()
					{
				res.innerHTML=input3.value+" "+input2.value+" "+input1.value;
				res.style.background="blue";
					});
			
			</script>
			</td>
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
			<td colspan="3"><div id="Fullname1" class="text-light px-2 fw-bold"></div>
			<script type="text/javascript">
			const input6 = document.getElementsByTagName("input")[6];
			const input7 = document.getElementsByTagName("input")[7];
			const input8 = document.getElementsByTagName("input")[8];
			
			const res1=document.getElementById("Fullname1");
			
			input6.addEventListener("change", function()
					{
				res1.innerHTML=input8.value+" "+input7.value+" "+input6.value;
				res1.style.background="blue";
					});
			input7.addEventListener("change", function()
					{
				res1.innerHTML=input8.value+" "+input7.value+" "+input6.value;
				res1.style.background="blue";
					});
			input8.addEventListener("change", function()
					{
				res1.innerHTML=input8.value+" "+input7.value+" "+input6.value;
				res1.style.background="blue";
					});
			
			</script>
			</td>
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
			<td colspan="3"><div id="Fullname2" class="text-light px-2 fw-bold"></div>
			<script type="text/javascript">
			const input9 = document.getElementsByTagName("input")[9];
			const input10 = document.getElementsByTagName("input")[10];
			const input11= document.getElementsByTagName("input")[11];
			
			const res2=document.getElementById("Fullname2");
			
			input9.addEventListener("change", function()
					{
				res2.innerHTML=input11.value+" "+input10.value+" "+input9.value;
				res2.style.background="blue";
					});
			input10.addEventListener("change", function()
					{
				res2.innerHTML=input11.value+" "+input10.value+" "+input9.value;
				res2.style.background="blue";
					});
			input11.addEventListener("change", function()
					{
				res2.innerHTML=input11.value+" "+input10.value+" "+input9.value;
				res2.style.background="blue";
					});
			
			</script>
			</td>
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
		<td colspan="3"><div class="text-center fw-bold fs-2 bg-primary">UPLOAD DOCUMENT DETAILS</div></td>
		</tr>
	
	</table>
	
	<table class="table table-striped">
			
			<tr>
				<td><div class="text-center fw-bold fs-5 bg-secondary">List 1: Self Identification Documents</div></td>
				<td><div class="text-center fw-bold fs-5 bg-secondary">List 1: Guardian Proof Documents</div></td>
			</tr>
			<tr>
				<td>
				<ol>
				<li>Passport Photo</li>
				<li>Aadhaar Card</li>
					
				</ol>
				</td>
				<td>
				<ol>
				<li>Father Aadhaar Card</li>
				<li>Mother Aadhaar Card</li>
				
				</ol>
				</tr>
				
				<tr>
				<td colspan="2" class="fw-bold fs-2 text-center bg-success text-light">DOCUMENTS UPLOAD</td>
		</tr>
		
				
			<tr>
				<td><div class="input-group align-middle">
			  <input type="file" class="form-control" id="inputGroupFile02">
			  <label class="input-group-text text-light" for="inputGroupFile02"><a href="upload.html">Upload Passport Photo</a></label>
			</div></td>
				<td><div class="input-group align-middle">
			  <input type="file" class="form-control" id="inputGroupFile02">
			  <label class="input-group-text text-light" for="inputGroupFile02"><a href="upload.html">Upload Aadhaar / Father</a></label>
			</div></td>
			</tr>
			
			<tr>
				<td><div class="input-group align-middle">
			  <input type="file" class="form-control" id="inputGroupFile02">
			  <label class="input-group-text text-light" for="inputGroupFile02"><a href="upload.html">Uplaod Aadhaar / Student</a></label>
			</div></td>
				<td><div class="input-group align-middle">
			  <input type="file" class="form-control" id="inputGroupFile02">
			  <label class="input-group-text text-light" for="inputGroupFile02"><a href="upload.html">Upload Aadhaar / Mother</a></label>
			</div></td>
			</tr>
			
			<tr>
				<td colspan="2">
				<input type="checkbox" id="check" checked required> &nbsp;&nbsp;&nbsp; I/We have read
				<a class="text-danger" data-bs-toggle="collapse" href="#termscondition" role="button" area-controls="collapseExample">term &amp; conditions</a> understood and agree abide by the School.<br>
				<div id="termscondition" class="collapse">
					<div>
					<strong class="ps-4 " style="text-align:center;">Terms &amp; Conditions &amp; Declaration.</strong>
						<ul class="me-3">
						<li> To acquire grater facility in the study of English only. English should be spoken in the school premises.</li>
						<li> It is a compulsory for every child to come to school with full uniform on all weekdays and complete white on Saturday. Irregular attendence, habitual wnat to application, in subordination to teacher, kind of cheating of serious miscout even ousite the school premises, any habit or behavior objectionable to the good tone of the school are sufficient reasons for the dismissible of a pupil.</li>
						<li> Pupils admission from other school are require to bring mark sheet of the last annual examination.</li>
						<li> Pupils are expected to take part in all extra curricular activities of the school.</li>
						<li> No pupil should be absent without abtaining leave. The leave application must be submitted to the Principal for grant on the first day of his/her present after leave.</li>
						<li> If any are absent three days consecutively he/she will be find of Rs. 5/- and of more than six days in a month without serious reasons, a find of Rs. 10/- will be levied.</li>
						<li> Students who fail to appear in Half Yearly Examination will be fined Rs. 100/- in a subject.</li>
						<li> Parents and Guardians are requested to co-operate with the school autherities in all matters concerning the education of the children.</li>
						</ul>
					</div>
					
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="reset" value="reset" class="form-control bg-danger fw-bold">
				</td>
				<td>
					<input type="submit" value="submit" class="form-control bg-primary fw-bold">
				</td>
			</tr>
				
			<tr>
			<td colspan="2" >
				<a href="index.html"> <input type="button" value="cancel" class="form-control bg-secondary fw-bold w-50 mx-auto text-light"> </a>
			</td>
			</tr>
			
		</table>
		</Form>
	</div>
	</div>
	
	   <div class="text-center px-3 pt-3 d-flex justify-content-between" style="background: rgba(0, 0, 0, 0.5)">
	     <p class="text-white" >Powered by: <img src="Photos/eShine-noborder.png" width="40px" height="30px"> Technology</p>
	     <div class="text-white"> &copy; 2023 Copyright: <a class="text-white" style="text-decoration:none" href="https://gessora.com/">www.gessora.com</a></div>
	      <div class="text-white">Privacy | Terms &amp; Conditions</div>
	    </div>	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>