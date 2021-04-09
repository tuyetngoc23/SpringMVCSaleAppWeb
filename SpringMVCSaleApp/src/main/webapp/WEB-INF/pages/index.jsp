<%-- 
    Document   : index
    Created on : Apr 2, 2021, 7:50:04 AM
    Author     : Admin
--%>
<<<<<<< HEAD
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<h1 class="text-center text-info">Danh Sách Sản Phẩm</h1>
<form:form>
    <div class="row">
        <div class="col-md-10 form-group">
            <input type="text" name="kw" class="form-control" placeholder="Nhập từ khóa..."/>
        </div>
        <div class="col-md-2 form-group">
            <input type="submit"  class="btn btn-info" value="Tìm Kiếm" />
        </div>
    </div>
</form:form>
<table class="table">
    <tr>
        <th>Mã Sản Phẩm</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá Sản Phẩm</th>
        <th></th>
    </tr>
    <c:forEach items="${products}" var="p">
        <tr id="product${p.id}">
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price} VNĐ</td>
            <td>
                <a href="javascript:;" class="btn btn-danger" onclick="deleteProduct(${p.id})">Xóa</a>
                <a href="javascript:;" class="btn btn-info" onclick="">Cập Nhật</a>
                <a href="javascript:;" class="btn btn-success" onclick="">Thêm Vào Giỏ</a>
            </td>
        </tr>
    </c:forEach>
</table>
<script src="<c:url value="/js/main.js"/>"></script>
=======
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
>>>>>>> 3aa2a2f58ede0eb2cfb722e7f5ef09229a7bcfb3

