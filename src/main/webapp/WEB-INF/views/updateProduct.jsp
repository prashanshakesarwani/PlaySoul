<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Update Product</h1>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/updateProduct/${productId}/?${_csrf.parameterName}=${_csrf.token}" 
        method="post" modelAttribute="product" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="guitar" />Guitar</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="piano" />Piano</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:errors path="description" cssStyle="color:#ff0000;" />
                <form:input path="description" id="description" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" />
            </div>
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <form:errors path="quantity" cssStyle="color:#ff0000;" />
                <form:input path="quantity" id="quantity" class="form-Control" />
            </div>
            <div class="form-group">
                <label for="image">Image</label>
                <form:errors path="image" cssStyle="color:#ff0000;" />
                <form:input type="file" path="image" id="image" class="form:input-large" />
            </div>
        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">

    </form:form>
 
<%@include file="footer.jsp"%>