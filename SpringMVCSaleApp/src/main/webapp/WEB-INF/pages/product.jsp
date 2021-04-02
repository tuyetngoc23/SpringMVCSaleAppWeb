<%-- 
    Document   : product
    Created on : Apr 2, 2021, 8:44:42 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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