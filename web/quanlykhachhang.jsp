<%-- 
    Document   : quanlykhachhang
    Created on : Dec 29, 2023, 9:58:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

        img {
        max-width: 100px;
        max-height: 100px;
        }

        #bag {
        text-align: right;
        margin-right: 30px;
        margin-top: 30px;
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
        <script type="text/javascript">
    function doDelete(id) {
        if (confirm("Are you sure to delete khach hang with id=" + id)) {
            window.location = "deletekh?id=" + id;
        }
    }
        </script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body>
        <h1>QUẢN LÝ KHÁCH HÀNG</h1>
        <h3>
            <h2>Chào quản lý:${sessionScope.account.username}</h2>  <br/>
            <c:if test="${sessionScope.account.role==1}">

                <a href="quanly"><i class="fas fa-arrow-left"></i>Trang quản lý</a>
                <h3 style="color: red">${requestScope.ms}</h3>
                <h2>Danh sách khách hàng</h2>
                <a href="addkh"><i class="fas fa-plus-circle"></i>Thêm mới Khách hàng</a> <br/><!-- comment -->
                <!--                    enter so item to buy:
                                    <input style="text-align: center" type="number" name="num" value="1">
                                    <hr/>-->
                <table border="1px"with="40%">
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Số tiền</th>
                        <th>Tài khoản</th>
                        <th>Mật khẩu</th>
                        <th>Tùy chọn</th>
                    </tr>

                    <c:forEach items="${requestScope.data}" var="c">
                        <c:set var="id" value="${c.id}"/>
                        <tr>
                            <td>${id}</td>
                            <td>${c.name}</td>

                            <td class="tr"><fmt:formatNumber pattern="##.#" value="${(c.amount)}"/></td>
                        <td>${c.username}</td>
                        <td>${c.password}</td>

                        <td>
                            <a href="updatekh?id=${id}"><i class="fas fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#" onclick="doDelete('${id}')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                        </tr>
                    </c:forEach>
                </table>
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
