<%-- 
    Document   : index
    Created on : Apr 2, 2021, 7:50:04 AM
    Author     : Admin
--%>
<a href="index.jsp"></a>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<h1 class="text-center text-info">Danh sach san pham</h1>
<section>
    <h1 class="text-center text-danger">
        <spring:message code="saleapp.title"/>
    </h1>
    <form method="POST">
        <div class="form-group">
            <label for="name">
                <spring:message code="products.name"/>
            </label>
            <input id="name" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="price">
                <spring:message code="products.price"/>
            </label>
            <input id="price" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="price">
                <spring:message code="products.image"/>
            </label>
            <input type ="file "id="price" class="form-control"/>
        </div>
        <div class="form-group">

            <input type="submit" id="price" cssClass="btn btn-warning" value="<spring:message code="products.add"/>"/>
        </div>
    </form>
</section>

