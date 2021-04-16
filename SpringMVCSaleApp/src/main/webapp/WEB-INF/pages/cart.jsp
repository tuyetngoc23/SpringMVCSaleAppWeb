<%-- 
    Document   : cart
    Created on : Apr 16, 2021, 12:17:27 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-info">GIỎ HÀNG</h1>
<div class="alert alert-warning">
    <h2>Tong sp: ${cartStats.totalQuantity}</h2>
    <h2>Tong tien:${cartStats.totalAmount} VND </h2>
</div>
<table class="table">
    <tr>
        <th>Mã Sản Phẩm</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá Sản Phẩm</th>
        <th>Số lượng</th>
    </tr>
    <c:if test="${cart == null}">
        <tr>
            <td colspan="4">KHONG CO SAN PHAM TRONG GIO</td>
        </tr>
    </c:if>
    <c:if test="${cart != null}">
        <c:forEach items="${cart.values()}" var="c">
            <tr>
            <td>${c.productId}</td>
            <td>${c.productName}</td>
            <td>${c.price}</td>
            <td>
                <input type="number" class="form-control" value="${c.quantity}"/>
            </td>
        </tr>
        </c:forEach>
    </c:if>
</table>
<div>
    <input type="submit" value="Thanh Toán" class="btn btn-info"/>
</div>

<script src="<c:url value="/js/main.js"/>"></script>
