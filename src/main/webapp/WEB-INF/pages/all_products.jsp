<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<c:forEach items="${products}" var="p">
	<div class="card my-3 card-warning">
		<div class="card-body">
			<h3><c:out value="${p.productName}"></c:out></h3>
			<p>
				<c:out value="${p.productCategory}"></c:out>
			</p>
		</div>
	</div>
</c:forEach>