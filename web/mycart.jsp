<%-- 
    Document   : mycart
    Created on : Nov 26, 2023, 9:32:59 PM
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
           <style>
/*           body {
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
           a{
               text-decoration: none;
               color: chocolate;
               font-size: 22px;
               font-weight: bold;
           }*/
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
/* Căn giữa nút */
.button-center {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

/* CSS cho nút */
.submit-btn {
    background-color: #333;
    color: #fff;
    border: none;
    padding: 8px 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: flex;
    align-items: center; /* Canh icon và text theo chiều ngang */
}

/* Màu icon */
.submit-btn i {
    margin-right: 5px; /* Khoảng cách giữa icon và text */
}

/* Hover effect */
.submit-btn:hover {
    background-color: #555;
}
        </style>
        <script type="text/javascript">
      function confirmPurchase() {
    var confirmation = confirm("Bạn có chắc chắn muốn đặt hàng?");
    if (confirmation) {
        // Nếu người dùng chọn "OK" trong cửa sổ xác nhận
        // Thực hiện hành động gửi form đặt hàng
        document.querySelector('#purchaseForm').submit(); // Gửi form
    } else {
        // Nếu người dùng chọn "Cancel" trong cửa sổ xác nhận
        // Không làm gì cả hoặc thực hiện hành động khác tùy vào logic của bạn
    }
}

        </script>
    </head>
    <body>
    <center><h1>Giỏ hàng</h1></center>
        
         <table border="1px"with="40%">
                <tr>
                    <th>No</th>
                    <th>Tên</th>
                    <th>Số lượng        </th>
                    <th>Giá</th>
                    <th>Ngày</th>
                    <th>Miêu tả</th>
                    <th>Ảnh</th>
                    <th>Cid</th>
                    <th>Total Money</th>
                    <th>Tùy chọn</th>
                   
                </tr>
               
                <c:set var="o" value="${requestScope.cart}"/>
                <c:set var="tt" value="0"/>
                <c:forEach items="${o.items}" var="i">
                    <c:set var="tt" value="${tt+1}"/>
                    <tr>
                        <td>${tt}</td>
                        <td>${i.product.name}</td>
<!--                        <td style="text-align: center">
                             <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                             ${i.quantity}
                             <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                        </td>-->
                             <td style="text-align: center">
                                 <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                                 ${i.quantity}
                                 <c:choose>
                                     <c:when test="${i.quantity < i.product.quantity}">
                                         <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                                     </c:when>
                                     <c:otherwise>
                                         <button disabled>+</button>
                                         <span style="color: red;">Hết hàng</span>
                                     </c:otherwise>
                                 </c:choose>
                             </td>
                        <td class="tr"><fmt:formatNumber pattern="##.#" value="${i.price}"/></td>
<!--                        <td class="tr">$<fmt:formatNumber pattern="##.#" value="${(i.price*i.quantity)}"/></td>-->
                        <td style="text-align: center">${i.product.releaseDate}</td>
                        <td style="text-align: center">${i.product.describe}</td>
                        <td><img src="${i.product.image}"></td>
                        <td>${i.product.category.id}</td>
                        <td class="tr"><fmt:formatNumber pattern="##.#" value="${(i.price*i.quantity)}"/>VND</td>
                        <td  style="text-align: center">
                            <form action="process" method="post">
                                <input type="hidden" name="id" value="${i.product.id}"/>
                                <input type="submit" value="return item"/>
                                
                            </form>
                        </td>
                    </tr>
                </c:forEach>
         </table>
                <h3> Tổng tiền : ${o.totalMoney} VND</h3>
                </br>
<!--                <form action="checkout1" method="post">
                    <input type="submit" value="Xác nhận đặt hàng"/>                    
                </form>-->
<!--                    <form action="checkout1" method="post">
                         <div class="button-center">
                            <button class="submit-btn" type="submit">
                                <i class="fas fa-check-circle"></i> Xác nhận đặt hàng
                            </button>
                        </div>
                    </form>-->
                 <form id="purchaseForm" action="checkout1" method="post">
                    <!-- Các input và nội dung khác trong form -->
                     <!-- ... -->
                  <div class="button-center">
                      <button class="submit-btn" type="button" onclick="confirmPurchase()">
                           <i class="fas fa-check-circle"></i> Xác nhận đặt hàng
                      </button>
                  </div>
                </form>

                </hr>
                </br>
                <%-- Kiểm tra nếu khách hàng chưa đăng nhập thì hiển thị thông báo --%>
                <c:if test="${empty sessionScope.account}">
                    <center>
                        <h3>Quý khách vui lòng đăng nhập trước khi xác nhận đặt hàng.</h3>
                        <a href="login1">Đăng nhập</a>
                    </center>
                </c:if>
                  <a href="home"> <i class="fas fa-home"></i>Trang chủ</a>
    </body>
</html>
