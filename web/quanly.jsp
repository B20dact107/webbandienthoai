<%-- 
    Document   : quanly
    Created on : Dec 26, 2023, 4:40:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        margin-top: 50px;
    }

    a {
        display: block;
        width: 200px;
        padding: 10px;
        margin: 10px auto;
        text-align: center;
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #0056b3;
    }

    a i {
        margin-right: 5px;
    }

    a[href="home"] {
        margin-top: 20px;
        background-color: #28a745;
    }

    a[href="home"]:hover {
        background-color: #218838;
    }
        </style>
    </head>
    <body>
        <h1>Trang Chủ Quản lý </h1>
        <a href="info">Quản lý sản phẩm</a>
        <a href="quanlykhachhang">Quản lý khách hàng</a>
        <a href="quanlydonhang">Quản lý đơn hàng</a>
        <a href="home"> <i class="fas fa-home"></i>Quay lai trang chu</a>
    </body>
</html>
