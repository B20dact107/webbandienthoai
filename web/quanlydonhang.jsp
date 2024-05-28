<%-- 
    Document   : quanlydonhang
    Created on : Dec 30, 2023, 12:06:24 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            h1 {
                color: #333;
                text-align: center;
                margin-top: 20px;
            }

            h2 {
                color: #333;
                text-align: center;
                margin-top: 30px;
            }

            h3 {
                text-align: center;
                margin-bottom: 30px;
            }

            a {
                display: inline-block;
                margin-bottom: 10px;
                text-decoration: none;
                color: #333;
                padding: 5px 10px;
                border-radius: 5px;
                background-color: #f0f0f0;
                transition: all 0.3s ease;
            }

            a:hover {
                background-color: #ccc;
            }

            table {
                border-collapse: collapse;
                width: 90%;
                margin: 20px auto;
            }

            th,
            td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: center;
            }

            th {
                background-color: #333;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .img {
                max-width: 100px;
                max-height: 100px;
            }

            .fas {
                margin-right: 5px;
            }

            /* Additional Styling */
            .nav-links {
                display: inline-block;
                margin-right: 10px;
            }

            .username {
                color: red;
            }

            /* Adjustments for better alignment */
            .topnav {
                text-align: right;
                margin-top: 10px;
                margin-right: 20px;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>QUẢN LÝ ĐƠN HÀNG</h1>
        <h3>
            <h2>Chào quản lý:${sessionScope.account.username}</h2>  <br/>
            <c:if test="${sessionScope.account.role==1}">

                <a href="quanly"><i class="fas fa-arrow-left"></i>Trang quản lý</a>
                <h3 style="color: red">${requestScope.ms}</h3>
                <h2>Danh sách đơn đặt</h2>
               
                <!--                    enter so item to buy:
                                    <input style="text-align: center" type="number" name="num" value="1">
                                    <hr/>-->
                <table border="1px"with="40%">
                    <tr>
                        <th>ID</th>
                        <th>Date</th>
                        <th>Mã Khách hàng</th>
                        <th>Số tiền</th>
                        
                    </tr>
                    <c:set var="totalRevenue" value="0" />
                    <c:forEach items="${requestScope.data}" var="c">
                        <c:set var="id" value="${c.id}"/>
                        <tr>
                            <td>${id}</td>
                            <td>${c.date}</td>
                            <td>${c.cusid}</td>
                            <td class="tr"><fmt:formatNumber pattern="##.#" value="${(c.totalmoney)}"/></td>
                            <c:set var="totalRevenue" value="${totalRevenue + c.totalmoney}" />
                        </tr>
                    </c:forEach>
                </table>
                    <h3> Tổng Doanh Thu: <fmt:formatNumber pattern="##.#" value="${totalRevenue}"/></h3>
                  <h2>Danh sách hàng đặt</h2>
                <table border="1px"with="40%">
                    <tr>
                        <th>Oid</th>
                        <th>Mã Sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá</th>

                    </tr>
                    <c:set var="tongsp" value="0" />
                    <c:forEach items="${requestScope.data1}" var="c">
                        <c:set var="oid" value="${c.oid}"/>
                        <tr>
                            <td>${oid}</td>
                            <td>${c.pid}</td>
                            <td>${c.quantity}</td>
                            <td class="tr"><fmt:formatNumber pattern="##.#" value="${(c.price)}"/></td>
                            <c:set var="tongsp" value="${tongsp + c.quantity}" />
                        </tr>
                    </c:forEach>
                </table>
                    <h3> Tổng Số Sản Phẩm Đã bán: <fmt:formatNumber pattern="###" value="${tongsp}"/></h3>
                <h3 style="color: blue">${requestScope.ms1}</h3>

                <h3>

                </h3>
            </c:if>
            <c:if test="${sessionScope.account.role==2}">
                CHÀO MỪNG BẠN KHÁCH HÀNG!
            </c:if>
        </h3>
    </body>
</html>
