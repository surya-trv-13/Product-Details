<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<c:forEach items="${products}" var="p">
	<div class="card text-white bg-warning mb-3">
		<div class="card-header">
			<h5 class="card-title text-center">
				<c:out value="${p.productName}"></c:out>
			</h5>
		</div>
		<div classs="card-body" style="display:flex; justify-content: space-around;">
			<p class="card-text">
				<c:out value="${p.productCategory}"></c:out>
			</p>
			<p class="card-text">
				&#8377;<c:out value="${p.price}"></c:out>
			</p>
		</div>
	</div>
</c:forEach>