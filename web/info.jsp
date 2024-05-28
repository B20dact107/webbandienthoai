<%-- 
    Document   : ìno
    Created on : Sep 19, 2023, 12:58:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <script type="text/javascript">
    function doDelete(id) {
        if (confirm("Are you sure to delete product with id=" + id)) {
            window.location = "delete?id=" + id;
        }
    }
        </script>
        <style>
       body {
           font-family: Arial, sans-serif;
           background-color: #f4f4f4;
           margin: 0;
           padding: 0;
       }

       
       
       h1, h2, h3 {
           text-align: center;
           margin: 10px 0; /* Khoảng cách 10px trên và dưới */
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

       th, td {
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
        </style>
<!--        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
            }
            center {
                margin-top: 50px;
            }
            h1 {
                color: #333;
            }
            table {
                border-collapse: collapse;
                width: 60%;
                margin-top: 20px;
            }
            th, td {
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
            a {
                text-decoration: none;
            }
            button {
                padding: 10px 20px;
                background-color: #333;
                color: white;
                border: none;
                cursor: pointer;
            }
            button:hover {
                background-color: #555;
            }
            
            .tr{
                text-align: right;
            }
        </style>-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body>
        <%--<jsp:include page="menu.jsp"/>--%>
        <h1>QUẢN LÝ SẢN PHẨM</h1>
        <h3>
            <h2>Chào quản lý:${sessionScope.account.username}</h2>  <br/>
            <c:if test="${sessionScope.account.role==1}">
                
                <a href="quanly"><i class="fas fa-arrow-left"></i>Trang quản lý</a>
                <h3 style="color: red">${requestScope.ms}</h3>
                <h2>Danh sách sản phẩm</h2>
                <a href="add"><i class="fas fa-plus-circle"></i>Thêm mới sản phẩm</a> <br/><!-- comment -->
<!--                    enter so item to buy:
                    <input style="text-align: center" type="number" name="num" value="1">
                    <hr/>-->
                    <table border="1px"with="40%">
                        <tr>
                            <th>ID</th>
                            <th>Tên</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                            <th>Ngày</th>
                            <th>Miêu tả</th>
                            <th>Ảnh</th>
                            <th>Cid</th>
                            <th>Tùy chọn</th>
                        </tr>

                        <c:forEach items="${requestScope.data}" var="c">
                            <c:set var="id" value="${c.id}"/>
                            <tr>
                                <td>${id}</td>
                                <td>${c.name}</td>
                                <td>${c.quantity}</td>
<!--                                <td>${c.price}</td>-->
                                <td class="tr"><fmt:formatNumber pattern="##.#" value="${(c.price*2)}"/></td>
                            <td>${c.releaseDate}</td>
                            <td>${c.describe}</td>
                            <td><img src="${c.image}"></td>
                            <td>${c.category.id}</td>

                            <td>
                                <a href="update?id=${id}"><i class="fas fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
