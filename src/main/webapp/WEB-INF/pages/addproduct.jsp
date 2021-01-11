<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!-- URL for form action -->
<c:url var="save_url" value="/saveProduct" />

<h4 class="text-center">Add your Product</h4>

<!-- Model Attribute should have the entity key for which this form is made  -->
<form:form action="saveProduct" method="post" modelAttribute="product">
	<div class="form-group">
		<form:label path="productName">Product Name :</form:label>
		<form:input path="productName" cssClass="form-control"
			placeholder="Enter about your product" autocomplete="off" />
		<br>
		<form:label path="productCategory">Product Category :</form:label>
		<form:input path="productCategory" cssClass="form-control"
			placeholder="Enter Category of the product" autocomplete="off" />
		<br>
		<form:label path="price">Price :</form:label>
		<form:input path="price" cssClass="form-control"
			placeholder="Enter Price (in Rupees)" autocomplete="off" />
	</div>
	<div class="container text-center">
		<button class="btn btn-outline-success">Add Product</button>
	</div>
</form:form>