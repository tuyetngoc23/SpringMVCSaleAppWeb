<%-- 
    Document   : product
    Created on : Apr 2, 2021, 8:44:42 AM
    Author     : Admin
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section>
    <h1 class="text-center text-danger">
        <spring:message code="saleapp.title"/>
    </h1>
    <form:form method="POST" modelAttribute="product">
        <form:errors path="*" element="div" cssClass="text-danger"/> 
        <div class="form-group">
            <label for="name">
                <spring:message code="products.name"/>
            </label>
            <form:input id="name" cssClass="form-control" path="name"/>
        </div>
        <div class="form-group">
            <label for="price">
                <spring:message code="products.price"/>
            </label>
            <form:input id="price" cssClass="form-control" path="price"/>
        </div>
        <div class="form-group">
            <label for="description">
                <spring:message code="products.des"/>
            </label>
            <form:input id="description" cssClass="form-control" path="description"/>
        </div>
        <div class="form-group">
            <label for="category" >
                <spring:message code="products.cate"/>
            </label>
            <form:select cssClass="form-control" id="category" path="category" >
                <c:forEach items="${category}" var="cate">
                    <option value="${cate.id}" >${cate.name}</option>
                </c:forEach>
            </form:select>
        </div>
        <div class="form-group">
            <input type="submit" id="price" cssClass="btn btn-warning" value="<spring:message code="products.add"/>"/>
        </div>
    </form:form>
</section>
