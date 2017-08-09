<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>">
<style type="text/css">
.form-control {
  border-radius: 0px;
  margin-top: 10px !important;
}</style>
<style>#myCarousel{display:none;}</style>
</head>
<body>

<div class="container" >
    	<div class="modal-dialog">
			<div class="modal-content">
				         
                               <div id="div-forms">

		<c:url var="addAction" value="saveSupplier"></c:url>
		<form:form action="${addAction}" modelAttribute="supplier"   id="login-form">
		   <div class="modal-body">
			<c:choose>
			<c:when test="${category.id gt 0}">
				<form:input class="form-control" path="id" readonly="true"/>
	 			</c:when></c:choose>
	 				<form:input class="form-control" path="supplierName" placeholder="Enter the Name" required="required"/>
					<form:errors path="supplierName"></form:errors>
					<form:input class="form-control input_text" path="supplierAddress" placeholder="Enter supplierAddress" required="required"/>
				 <form:errors path="supplierAddress"></form:errors>
				<!-- <input type="submit" class="btn btn-primary" value="Save" />-->
						</div><!-- model body -->
						 <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block" value="Save">Save</button>
                            </div>
						</div>
		</form:form></div></div></div></div>

					

				<div align="center">
		<table class="table" style="width: 80%" border="1px">
			<caption>Supplier</caption>
			<thead>
				<tr >
					<th>Supplier Id</th>
					<th>Supplier Name</th>
					<th>Supplier Addrss</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${supplierList}" var="supplier">
					<tr >
						<td ><c:out value="${supplier.id}" />
						<td ><c:out value="${supplier.supplierName}" />
						<td ><c:out value="${supplier.supplierAddress}" />
						<td > <a href="editcategory/${supplier.id}" button type="button" class="btn btn-primary">Edit</a>
						<td id="td1"><a href="removecategory/${supplier.id}" class="btn-default btn">Delete </a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


</body>
</html>
