
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cập nhật Sản Phẩm</h1>
        <c:set var="c" value="${requestScope.student}"/>
        <form action="update" method="post">
            id :<input type="text" name="id"value="${c.id}"><br/>
            Tên :<input type="text" name="name" value="${c.name}"><br/>
            Số lượng :<input type="text" name="quantity"value="${c.quantity}"><br/>
            Giá :<input type="text" name="price"value="${c.price}"><br/>
            Ngày Sản Xuất : <input type="text" name="releaseDate"value="${c.releaseDate}"><br/>
            Mô tả : <input type="text" name="describe"value="${c.describe}"><br/>
            Ảnh : <input type="file" name="image"value="${c.image}"><br/>
            cid : <input type="text" name="cid"value="${c.category.id}"><br/>
            <input type="submit" value="UPDATE">
        </form>
    </body>
</html>
