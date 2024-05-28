<%-- 
    Document   : updatekh
    Created on : Dec 29, 2023, 11:30:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }

            h1 {
                color: #333;
                text-align: center;
                margin-bottom: 20px;
            }

            form {
                max-width: 400px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            form input[type="text"],
            form input[type="submit"] {
                display: block;
                margin-bottom: 15px;
                width: calc(100% - 20px);
                padding: 8px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }

            form input[type="submit"] {
                background-color: #333;
                color: #fff;
                border: none;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            form input[type="submit"]:hover {
                background-color: #555;
            }

            form input[type="text"]:focus {
                outline: none;
                border-color: #66afe9;
                box-shadow: 0 0 5px #66afe9;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cập Nhật Khách Hàng</h1>
    <c:set var="c" value="${requestScope.student}"/>
    <form action="updatekh" method="post">
         <span>id: ${c.id}</span><br/>
        <input type="hidden" name="id"value="${c.id}"><br/>
        Tên :<input type="text" name="name" value="${c.name}"><br/>
        Số Tiền :<input type="text" name="amount"value="${c.amount}"><br/>
        Tài Khoản :<input type="text" name="username"value="${c.username}"><br/>
        Mật Khẩu : <input type="text" name="password"value="${c.password}"><br/>
        <input type="submit" value="UPDATE">
    </form>
    </body>
</html>
