<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
</head>

<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Products</h1>
				<p>Add products</p>
			</div>
			<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-mini pull-right">logout</a>
		</div>
	</section>
	<section class="container">
		<form:form modelAttribute="newProduct" class="form-horizontal" enctype="multipart/form-data">
			<fieldset>
				<legend>Add new product</legend>
				
				<!--product id-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="productId"> <spring:message code="addProduct.form.productId.label"/> </label>
					<div class="col-lg-10">
						<form:input id="productId" path="productId" type="text" class="form:input-large"/>
					</div>
				</div>
				
				<!--name-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for=name> <spring:message code="addProduct.form.name.label"/> </label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large"/>
					</div>
				</div>
				
				<!--unit price-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for=unitPrice> <spring:message code="addProduct.form.unitPrice.label"/> </label>
					<div class="col-lg-10">
						<form:input id="unitPrice" path="unitPrice" type="text" class="form:input-large"/>
					</div>
				</div>
				
				<!--manufacturer-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for=manufacturer> <spring:message code="addProduct.form.manufacturer.label"/> </label>
					<div class="col-lg-10">
						<form:input id="manufacturer" path="manufacturer" type="text" class="form:input-large"/>
					</div>
				</div>
				
				<!--category-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for=category> <spring:message code="addProduct.form.category.label"/> </label>
					<div class="col-lg-10">
						<form:input id="category" path="category" type="text" class="form:input-large"/>
					</div>
				</div>
				
				<!--unit in stock-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for=unitsInStock> <spring:message code="addProduct.form.unitInStock.label"/> </label>
					<div class="col-lg-10">
						<form:input id="unitsInStock" path="unitsInStock" type="text" class="form:input-large"/>
					</div>
				</div>
				
				<!--unit in order-->
<!-- 				<div class="form-group"> -->
<!-- 					<label class="control-label col-lg-2 col-lg-2" for=unitsInOrder>Units in order</label> -->
<!-- 					<div class="col-lg-10"> -->
<%-- 						<form:input id="unitsInOrder" path="unitsInOrder" type="text" class="form:input-large"/> --%>
<!-- 					</div> -->
<!-- 				</div> -->
				
				<!--description-->
				<div class="form-group">
					<label class="control-label col-lg-2" for=description> <spring:message code="addProduct.form.description.label"/> </label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" rows="2"/>
					</div>
				</div>
				
				<!--discontinued-->
<!-- 				<div class="form-group"> -->
<!-- 					<label class="control-label col-lg-2" for=discontinued>Discontinued</label> -->
<!-- 					<div class="col-lg-10"> -->
<%-- 						<form:checkbox id="discontinued" path="discontinued"/> --%>
<!-- 					</div> -->
<!-- 				</div> -->
				
				<!--condition-->
				<div class="form-group">
					<label class="control-label col-lg-2" for=condition> <spring:message code="addProduct.form.condition.label"/> </label>
					<div class="col-lg-10">
						<form:radiobutton id="condition" path="condition" value="New"/>New
						<form:radiobutton id="condition" path="condition" value="Old"/>Old
						<form:radiobutton id="condition" path="condition" value="Refurbished"/>Refurbished
					</div>
				</div>
				
				<!--product image-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="productImage"> <spring:message code="addProduct.form.productImage.label"/> </label>
					<div class="col-lg-10">
						<form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
					</div>
				</div>
				
				<!--product user manual-->
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="userManual"> <spring:message code="addProduct.form.userManual.label"/> </label>
					<div class="col-lg-10">
						<form:input id="userManual" path="userManual" type="file" class="form:input-large"/>
					</div>
				</div>

				<!--Add button-->
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="brn btn-primary" value="Add"/>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>