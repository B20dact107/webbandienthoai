<%-- 
    Document   : addkh
    Created on : Dec 29, 2023, 10:59:07 PM
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
         padding: 20px;
     }

     h1 {
         color: #333;
         text-align: center;
         margin-bottom: 20px;
     }

     h3 {
         text-align: center;
         color: red;
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
     form input[type="file"],
     form input[type="submit"] {
         display: block;
         margin-bottom: 15px;
         width: 100%;
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
        </style>
    </head>
    <body>
        <h1>Thêm Mới Khách Hàng</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="addkh" method="post">
            ID :<input type="text" name="id"><br/>
            Tên :<input type="text" name="name"><br/>
            Số Tiền :<input type="text" name="amount"><br/>
            Tài Khoản : <input type="text" name="username"><br/>
            Mật Khẩu : <input type="text" name="password"><br/>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>

