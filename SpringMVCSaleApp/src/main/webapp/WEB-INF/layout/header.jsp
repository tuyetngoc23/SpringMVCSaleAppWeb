<%-- 
    Document   : header
    Created on : Apr 2, 2021, 7:47:02 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Trang chủ</a>
        </li>
    </ul>
    <ul class="navbar-nav">
        <c:forEach items="${category}" var="cate">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/?cateId${cate.id}"/>">${cate.name}</a>
            </li>
        </c:forEach>
        <li class="nav-item">
            <a class="nav-link text-info" href="<c:url value="/cart"/>">Giỏ hàng
                <span class="badge badge-danger" id="cart-counter">0</span>
            </a>
        </li>
    </ul>
</nav>
