
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
    *{
    margin: 0;
    padding: 0;
}
body{
    background: url('Photos/Photo/img20.jpg') no-repeat;
   background-size: cover;
    background-position:center;
    background-repeat: no-repeat;
}
div.main{
    width: 440px;
    margin: 50px auto 50px auto;
}
h2{
    text-align: center;
    padding: 15px;
    padding-top: 40px;
    padding-bottom: 0px;
    font-family: sans-serif;
    color: rgb(0, 255, 42);
}
div.register{
    background-color: rgba(0, 0, 0, 0.5);
    width: 100%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid rgba(255,255,255,0.3);
    box-shadow:2px 2px 15px rgba(0,0,0,0.3);
    color:#f2f2f7;
}
form#register{
    margin: 40px;
}
label{
    font-family: sans-serif;
    font-size: 18;
    font-style: italic;
}
input#name{
    width: 355px;
    border: 1px solid #ddd;
    border-radius: 3px;
    outline: 0;
    padding: 7px;
    background-color: #fff;
    box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3)
}
 #submit{
    width: 100px;
    padding: 7px;
    font-size: 16px;
    font-family: sans-serif;
    font-weight: 600;
    border-radius: 50px;
    background-color: rgba(0, 250, 75, 0.815);
    color: #fff;
    cursor: pointer;
    border: 1px solid
    rgba(255,255,0.3);
    box-shadow: 1px 1px 5px
    rgba(0,0,0,0.3);
    margin-bottom: 20px;
    margin-left: 20px;
}
form #reset{
    width: 100px;
    padding: 7px;
    font-size: 16px;
    font-family: sans-serif;
    font-weight: 600;
    border-radius: 50px;
    background-color: rgba(250, 100, 0,0.8);
    color: #fff;
    cursor: pointer;
    border: 1px solid
    rgba(255,255,0.3);
    box-shadow: 1px 1px 5px
    rgba(0,0,0,0.3);
    margin-bottom: 20px;
    margin-left: 110px;
}
  label,span h2{
        text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
    }
    </style>
  </head>
  <body>
  <nav class="sticky-top navbar navbar-expand-lg bg-success">
  <div class="container-fluid">
  
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a style="color:white;"class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
       
      </ul>
      <!-- <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success text-light" type="submit">Search</button>
      </form> -->
    </div>
  </div>
</nav>
<h2>Teacher's Online Registered</h2>

       <div class="main">
 <div class="register">
        <h2>Register Here</h2>
        <form action="Teacherkey" id="register" method="post">
        <label>Last Name : </label>
        <br>
        <input type="text" name="LastName"
        id="name" placeholder="Enter Your Last Name" required>
        <br><br>
         <label>Middle Name : </label>
        <br>
        <input type="text" name="MiddleName"
        id="name" placeholder="Enter Your Middle Name" required>
        <br><br>
        <label>First Name : </label>
        <br>
        <input type="text" name="FirstName"
        id="name" placeholder="Enter Your First Name" required>
        <br><br>
        <label>Your Age : </label>
        <br>
        <input type="number" name="Age"
        id="name" placeholder="How Old Are You?" required>
        <br><br>
        <label>Mobile No. : </label>
        <br>
        <input type="text" name="Mobile"
        id="name" maxlength="10" placeholder="Enter Your Mobile No." required>
        <br><br>
         <label>Aadhaar No. : </label>
        <br>
        <input type="text" name="Aadhaar"
        id="name" maxlength="12" placeholder="Enter Your Aadhaar No." required>
        <br><br>
        <label>Email : </label>
        <br>
        <input type="email" name="Mail"
        id="name" placeholder="Enter Your Valid Email" required>
        <br><br>
        <label>Gender : </label>
        <br>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="radio" name="Gender" id="male" value="Male" checked>
        &nbsp;
        <span id="male">Male</span>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="radio" name="Gender" id="Female" value="Female">
        &nbsp;
        <span id="Female">Female</span>
        <br><br>
        <label>Knowm Language : </label>
        <br>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="checkbox" name="Language1" value="Hindi" id="Hindi">
        &nbsp;
        <span id="hindi">Hindi</span>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="checkbox" name="Language2" value="English" id="English">
        &nbsp;
        <span id="english">English</span>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="checkbox" name="Language3" value="Urdu" id="urdu">
        &nbsp;
        <span id="urdu">Urdu</span>
        <br><br>
        <label>Create Password : </label>
        <br>
        <input type="password" name="crpassword"
        id="name" placeholder="Enter Your Create Password" required>
        <br><br>
        <label>Confirm Password : </label>
        <br>
        <input type="text" name="copassword"
        id="name" placeholder="Enter Your Confirm Password" required>
        <br><br>
        <input type="submit" value="Submit" name="submit" id="submit">
        <input type="reset" value="Reset" name="reset" id="reset">
        
        </form>
 </div><!--end register-->
 </div><!--end main-->
 <footer>
 <div class="text-center px-3 pt-3 d-flex justify-content-between" style="background: rgba(0, 0, 0, 0.5)">
	     <p class="text-white" >Powered by: <img src="Photos/eShine-noborder.png" width="40px" height="30px"> Technology</p>
	     <div class="text-white"> &copy; 2023 Copyright: <a class="text-white" style="text-decoration:none" href="https://gessora.com/">www.gessora.com</a></div>
	      <div class="text-white">Privacy | Terms &amp; Conditions</div>
	    </div>	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 </footer>
</body>
</html>