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
<<<<<<< HEAD
                <a class="nav-link" href="<c:url value="/?cateId${cate.id}"/>">${cate.name}</a>
=======
                <a class="nav-link" href="#">${cate.name}</a>
>>>>>>> 3aa2a2f58ede0eb2cfb722e7f5ef09229a7bcfb3
            </li>
        </c:forEach>
    </ul>
</nav>
