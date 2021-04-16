<%-- 
    Document   : index
    Created on : Apr 2, 2021, 7:50:04 AM
    Author     : Admin
--%>

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
                <a href="<c:url value="/products/?productId=${p.id}"/>" class="btn btn-info" onclick="">Cập Nhật</a>
                <a href="javascript:;" class="btn btn-success" onclick="addToCart(${p.id})">
                    Thêm Vào Giỏ
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<script src="<c:url value="/js/main.js"/>"></script>
