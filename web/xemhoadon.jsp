<%-- 
    Document   : xemhoadon
    Created on : Dec 30, 2023, 9:16:19 PM
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
            a {
                display: block;
                width: fit-content;
                margin: 0 auto;
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

        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Danh sách hoá đơn</h2>
        <table border="1px"with="40%">
            <tr>
                <th>ID</th>
                <th>Date</th>
                <th>Số tiền</th>

            </tr>

            <c:forEach items="${requestScope.student}" var="c">
                <c:set var="id" value="${c.id}"/>
                <tr>
                    <td>${id}</td>
                    <td>${c.date}</td>
                    <td class="tr"><fmt:formatNumber pattern="##.#" value="${(c.totalmoney)}"/></td>
                </tr>
            </c:forEach>
        </table>
        <a href="home"> <i class="fas fa-home"></i>Trang chủ</a>
    </body>
</html>
