
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BJJ INFO AUSTRIA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	background-color: #d9534f;
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #fbeded;
	height: 100%;
	color: white;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #d9534f;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/bookstore/">Home</a></li>
					<li><a href="/bookstore/news/list">Newsfeed</a></li>
					<li><a href="/bookstore/menu">Gym Menu</a></li>
					<li class="active"><a href="/bookstore/gym/find">Search</a></li>


				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<img src="images/bjjinfoaustria.png" alt="bjjinfo" width="200"
					height="200" />


			</div>
			<div class="col-sm-8 text-left">


				<form action="find/list" method="get">
					<h3>Search for gym by name</h3>
					
					<input class="form-control" type="text" name="name"><br>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search"></span> Search
					</button>
					
				</form>
				<form action="find/list" method="get">
					<h3>Search for gym by name</h3>
					<input type="text" name="name"><br>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>


			</div>
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
				<!--  <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>-->
			</div>
		</div>
	</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>
