<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}
	body{
		display: flex;
		justify-content: center;
		align-items: center;
		min-height: 100vh;
		background: #23242a;
		background:url(Photos/LLLL.jpg) no-repeat;
	}
	.box {
		position: relative;
		width: 380px;
		height: 420px;
		background: #1c1c1c;
		border-radius: 8px;
		overflow: hidden;
	}
	
	.box::before
	{
		content: '';
		position: absolute;
		top: -50%;
		left: -50%;
		width: 380px;
		height: 420px;
		background: linear-gradient(0deg,transparent,
		transparent,#45f3ff,#45f3ff,#45f3ff);
		z-index: 1;
		transform-origin: bottom right;
		animation: animate 6s linear infinite;
	}
	
	.box::after
	{
		content: '';
		position: absolute;
		top: -50%;
		left: -50%;
		width: 380px;
		height: 420px;
		background: linear-gradient(0deg,transparent,
		transparent,#45f3ff,#45f3ff,#45f3ff);
		z-index: 1;
		transform-origin: bottom right;
		animation: animate 6s linear infinite;
		animation-delay: -3s;
	}
	
	/* line */
	.border-line{
		position: absolute;
		top: 0;
		inset: 0;
	}
	
	.borderLine::before
	{
		content: '';
		position: absolute;
		top: -50%;
		left: -50%;
		width: 380px;
		height: 420px;
		background: linear-gradient(0deg,transparent,
		transparent,#ff2770,#ff2770,#ff2770);
		z-index: 1;
		transform-origin: bottom right;
		animation: animate 6s linear infinite;
		animation-delay: -1.5s;
	}
	
	.borderLine::after
	{
		content: '';
		position: absolute;
		top: -50%;
		left: -50%;
		width: 380px;
		height: 420px;
		background: linear-gradient(0deg,transparent,
		transparent,#ff2770,#ff2770,#ff2770);
		z-index: 1;
		transform-origin: bottom right;
		animation: animate 6s linear infinite;
		animation-delay: -4.5s;
	}
	
	
	@keyframes animate
	{
		0%{
			transform: rotate(0deg);
		}
		100%{
			transform: rotate(360deg);
		}
	}
	
	
	.box form{
		position: absolute;
		inset: 4px;
		background: #222;
		padding: 50px 40px;
		border-radius: 8px;
		z-index: 2;
		display: flex;
		flex-direction: column;
		background:transparent;
	}
	.box form h2{
		color: #fff;
		font-weight: 1000;
		text-align: center;
		letter-spacing: 0.1em;
	}
	.box form .inputBox{
		position: relative;
		width: 300px;
		margin-top: 35px;
	}
	.box form .inputBox input{
		position: relative;
		width: 100%;
		padding: 20px 10px 10px;
		background: transparent;
		outline: none;
		border: none;
		box-shadow: none;
		color: #23242a;
		font-size: 1em;
		letter-spacing: 0.5em;
		transition: 0.5s;
		z-index: 10;
	}
	.box form .inputBox span{
		position: absolute;
		left: 0;
		padding: 20px 0px 10px;
		pointer-events: none;
		color: #8f8f8f;
		font-size: 1em;
		letter-spacing: 0.05em;
		transition: 0.5s;
	}
	.box form .inputBox input:valid ~ span,
	.box form .inputBox input:focus ~ span
	{
		color: #fff;
		font-size: 0.75em;
		transform: translateY(-34px);
	}	
	.box form .inputBox i
	{
		position: absolute;
		left: 0;
		bottom: 0;
		width: 100%;
		height: 2px;
		background: #fff;
		border-radius: 4px;
		overflow: hidden;
		transition: 0.5s;
		pointer-events: none;
	}
	.box form .inputBox input:valid ~ i,
	.box form .inputBox input:focus ~ i
	{
		height: 44px;
	}
	
	.box form .links{
		display: flex;
		justify-content: space-between;
	}
	.box form .links a{
		margin: 10px 0;
		font-size: 0.75em;
		color: #8f8f8f;
		text-decoration: none;
	}
	.box form .links a:hover,
	.box form .links a:nth-child(2)
	{
		color: #fff;
	}
	.box form  input[type="submit"]
	{
		border: none;
		outline: none;
		padding: 9px 25px;
		background: #fff;
		cursor: pointer;
		font-size: 0.9em;
		border-radius: 4px;
		font-weight: 600;
		width: 100px;
		margin-top: 10px;
	}
	.box form  input[type="submit"]:active
	{
		opacity: 0.8;
	}
	
	
</style>

<body>

<nav class="fixed-top navbar navbar-expand-lg bg-success">
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
      </form>-->
    </div>
  </div>
</nav><br>

<div class="box">
	<span class="borderLine"></span>
	<form action="Adminkey" method="post" >
		<h2>Admin Login</h2>
		<div class="inputBox">
			<input type="text" name="username" required="required">
			<span>Username</span>
			<i></i>
		</div>
		<div class="inputBox">
			<input type="password" name="password" required="required">
			<span>Password</span>
			<i></i>
		</div><br><br>
		<!-- <div class="links">
			<a href="#">Forgot your Password</a>
			<a href="#">SignUp</a>
		</div> -->
		<center><input type="submit" value="Login"></center>
	</form>
</div>

<div class=" fixed-bottom text-center px-3 pt-3 d-flex justify-content-between" style="background: rgba(0, 0, 0, 0.5)">
	     <p class="text-white" >Powered by: <img src="Photos/eShine-noborder.png" width="40px" height="30px"> Technology</p>
	     <div class="text-white"> &copy; 2023 Copyright: <a class="text-white" style="text-decoration:none" href="https://gessora.com/">www.gessora.com</a></div>
	      <div class="text-white">Privacy | Terms &amp; Conditions</div>
	    </div>	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>