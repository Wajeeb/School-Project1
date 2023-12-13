<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginTeacher</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<style>
	*
	{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}
	body{
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		background: url('Photos/img23.jpg') no-repeat;
		background-position:center;
		background-size:center;
		background-attachment:fixed;
	}
	.box{
		position: relative;
		width: 370px;
		height: 450px;
		background: #1c1c1c;
		border-radius: 50px 5px;
		overflow: hidden;
		
	}
	.box::before{
		content: '';
		position: absolute;
		top: -50%;
		left: -50%;
		width: 370px;
		height: 450px;
		background: linear-gradient(60deg,transparent,#45f3ff,
		#45f3ff);
		transform-origin: bottom right;
		animation: animate 9s linear infinite;
	}
	.box::after{
		content: '';
		position: absolute;
		top: -50%;
		left: -50%;
		width: 370px;
		height: 450px;
		background: linear-gradient(60deg,transparent,
		#d9138a,#d9138a);
		transform-origin: bottom right;
		animation: animate 6s linear infinite;
		animation-delay: -3s;
	}
	@keyframes animate {
		0%{
			transform: rotate(0deg);
		}
		100%{
			transform: rotate(360deg);
		}
	}
	
	form {
		position: absolute;
		inset: 2px;
		border-radius: 50px 5px;
		background: #28292d;
		z-index: 10;
		padding: 30px 30px;
		display: flex;
		flex-direction: column;
	}
	h2 {
		color: #45f3ff;
		font-size: 35px;
		font-weight: 900;
		text-align: center;
		margin-top: 40px;
	}
	.inputBox {
		position: relative;
		width: 300px;
		margin-top: 35px;
	}
	.inputBox input {
		position: relative;
		width: 100%;
		padding: 20px 10px 10px;
		background: transparent;
		border: none;
		outline: none;
		color: #23242a;
		font-size: 1em;
		letter-spacing: 0.05em;
		z-index: 10;
	}
	input[type="submit"]
	{
		font-size: 20px;
		border: none;
		outline: none;
		background: #45f3ff;
		padding: 5px;
		margin-top: 40px;
		border-radius: 90px;
		font-weight: 600;
		cursor: pointer;
	}
	
<!--/* note */
	input[type="submit"]:active
	{
		background: linear-gradient(90deg,#45f3ff,#d9138a);
		opacity: 0.8;
	}	
/* note */	-->
	
	input[type="submit"]:hover
	{
		background: linear-gradient(90deg,#45f3ff,#d9138a);
		opacity: 0.8;
	}	
	
	
	.inputBox span {
		position: absolute;
		left: 0;
		padding: 20px 10px 10px;
		font-size: 1em;
		color: #8f8f8f;
		pointer-events: none;
		letter-spacing: 0.05em;
		transition: 0.5s;
	}
	.inputBox input:valid ~ span,
	.inputBox input:focus ~ span
	{
		color: #45f3ff;
		transform: translateX(-10px) translateY(-30px);
		font-size: 0.75em;
	}
	.inputBox i {
		position: absolute;
		left: 0;
		bottom: 0;
		width: 100%;
		height: 2px;
		background: #45f3ff;
		border-radius: 4px;
		transition: 0.5s;
		pointer-events: none;
		z-index: 9;
	}
	
	.inputBox input:valid ~ i,
	.inputBox input:focus ~ i
	{
		height: 44px;
	}
	.links {
		display: flex;
		justify-content: space-between;
	}
	.links a {
		margin: 25px 0;
		font-size: 1em;
		color: #8f8f8f;
		text-decoration: none;
	}
	.links a:hover,
	.links a:nth-child(2)
	{
		color: #45f3ff;
	}
	.links a:nth-child(2):hover
	{
		text-decoration: underline 2px;
		text-underline-offset: 5px;
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
	<form action="TeacherLogin" method="post" class="Form">
		<h2>Teacher Login</h2>
		<div class="inputBox">
			<input type="text" name="username" required="required">
			<span>USERNAME</span>
			<i></i>
		</div>
		
		<div class="inputBox">
			<input type="password" name="password" required="required">
			<span>PASSWORD</span>
			<i></i>
		</div>
		<input type="submit" value="Login">
		<!-- <div class="links">
			<a href="#">Forgot Password?</a>
			<a href="#">SignUp</a>
		</div> -->
		
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

