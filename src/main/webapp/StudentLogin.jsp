<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>StudenLogin</title>
        <link rel="stylesheet" href="css/Student.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
   		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
	body
	{
		margin: 0;
		padding: 0;
		font-family: sans-serif;
		background: url('Photos/LLLL.jpg') no-repeat;
		background-size: cover;
		background-position: center;
		backkground-possition-fixed
	}
	</style>
    </head>
    <body>
   
<nav class="sticky-top navbar navbar-expand-lg bg-success">
  <div class="container_fluid">
  
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a style="color:white;"class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
      </ul>
      <!-- 
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success text-light" type="submit">Search</button>
      </form> -->
    </div>
  </div>
</nav>
    
        <div class="container">
            <div class="main mt-5">
                <input type="checkbox" id="chk" aria-hidden="true">

                <div class="login">
                    <form action="StudentLogin" method="post" class="form">
                        <label class="text-center" for="chk" aria-hidden="true">Student Log in</label>
                        <input class="input" type="text" name="username" placeholder="Username" required>
                        <input class="input" type="password" name="pswd" placeholder="Password" required>
                        <button>Log in</button>
                    </form>
                </div>

                <div class="register">
                    <form class="form">
                        <label class="text-center" for="chk" aria-hidden="true">Register</label>
                        <input class="input" type="text" name="txt" placeholder="Username" required>
                        <input class="input" type="email" name="email" placeholder="Email" required>
                        <input class="input" type="password" name="pswd" placeholder="Password" required>
                        <button>Register</button>
                    </form>
                </div>
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