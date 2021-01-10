<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!doctype html>
<html lang="en">
<head>
<%@include file="all_css_js.jsp"%>
<title><c:if test="${page=='home'}">
		Product Details
	</c:if> <c:if test="${page=='add'}">
		Add : Product Details 
	</c:if></title>
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
						class="list-group-item list-group-item-action"> Add Product </a> <a
						href="<c:url value='/home'></c:url>"
						class="list-group-item list-group-item-action"> View Product <span
						class="badge badge-pill badge-warning">2</span>
					</a>
				</div>
			</div>
			<div class="col-md-9">
				<!-- This JSTL shows the use of test if the recieved string is home from controller-->
				<c:if test="${page=='home'}">
					<h4 class="text-center">All Product(s)</h4>
				</c:if>

				<c:if test="${page=='add'}">
					<%@include file="addproduct.jsp"%>
				</c:if>
			</div>
		</div>
	</div>


</body>
</html>