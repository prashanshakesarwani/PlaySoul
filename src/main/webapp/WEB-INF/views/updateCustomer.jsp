<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Update Customer Details</h1>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/updateCustomer/${customerId}/?${_csrf.parameterName}=${_csrf.token}" 
        method="post" modelAttribute="customer">
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="customerName" cssStyle="color:#ff0000;" />
                <form:input path="customerName" id="name" class="form-Control" value="${customer.customerName}"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <form:errors path="customerEmail" cssStyle="color:#ff0000;" />
                <form:input path="customerEmail" id="email" class="form-Control" value="${customer.customerEmail}"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:errors path="customerPhone" cssStyle="color:#ff0000;" />
                <form:input path="customerPhone" id="phone" class="form-Control" value="${customer.customerPhone}"/>
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <form:errors path="username" cssStyle="color:#ff0000;" />
                <form:input path="username" id="username" class="form-Control" value="${customer.username}"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <form:errors path="password" cssStyle="color:#ff0000;" />
                <form:input path="password" id="password" class="form-Control" value="${customer.password}"/>
            </div>
            <div class="checkbox-inline">
                <label>Enabled
                <input type="checkbox" value="${customer.enabled}"/></label>           
            </div>
           
        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">

    </form:form>
 
<%@include file="footer.jsp"%>