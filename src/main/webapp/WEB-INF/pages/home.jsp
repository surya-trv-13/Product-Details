<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<link rel="icon" href="<c:url value='/resources/image/favicon.ico'/>" />
<title>
	<c:if test="${page=='home'}">
		Product Details
	</c:if> <c:if test="${page=='add'}">
		Add : Product Details 
	</c:if>
</title>
</head>
<body>
	<div class="container mt-3">
		<h2 class="text-center display-5">Welcome to Product Details</h2>
		<div class="row mt-5">
			<div class="col-md-3">
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action list-group-item-success active"
						disabled>Menu</button>
					<a href="<c:url value='/add'></c:url>"
						class="list-group-item list-group-item-action">
						Add Product
					</a>
					<a href="<c:url value='/home'></c:url>"
						class="list-group-item list-group-item-action">
						View Product 
						<span class="badge badge-pill badge-warning">2</span>
					</a>
				</div>
			</div>
			<div class="col-md-9">
				<!-- This JSTL shows the use of test if the recieved string is home from controller-->
				<c:if test="${page=='home'}">
					<h4 class="text-center">All Product(s)</h4>
				</c:if>

				<c:if test="${page=='add'}">
					<%@include file="addproduct.jsp" %>
				</c:if>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>