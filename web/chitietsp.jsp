
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script type="text/javascript">
            function setCheck(obj){
                var fries =document.getElementsByName('cidd');
                if((obj.id=='c0')&&(fries[0].checked==true))
                {
                    for( var i=1; i<fries.length;i++)
                        fries[i].checked=false;
                }else{
                    for( var i=1; i<fries.length;i++){
                        if(fries[i].checked=true){
                            fries[0].checked=false;
                            break;
                        }
                    }
                }
                document.getElementById("f1").submit();
            }
            function setCheck1(obj){
                var fries =document.getElementsByName('price');
                if((obj.id=='g0')&&(fries[0].checked==true))
                {
                    for( var i=1; i<fries.length;i++)
                        fries[i].checked=false;
                }else{
                    for( var i=1; i<fries.length;i++){
                        if(fries[i].checked=true){
                            fries[0].checked=false;
                            break;
                        }
                    }
                }
                document.getElementById("f2").submit();
            }
             function buy(id) {
                        var m = document.f.num.value;
                        document.f.action = "buy?id=" + id + "&num=" + m;
                        document.f.submit();
                    }
        </script>
        
            <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }

            #wrapper {
                width: 80%;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            #bag {
                display: flex;
                align-items: center;
                margin-right: 5px;
            }
            #bag .fas fa-shopping-cart {
                font-size: 30px;
                margin-right: 5px;
                color: yellow;

            }

            #bag a {
                text-decoration: none;
                color: #333;
                font-weight: bold;
                font-size: 25px;
            }
            #bag a:hover {
                text-decoration: underline;
            }

            #menu_tab {
                margin-top: 20px;
                width:98%;
            }

            .menu {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .menu li {
                display: inline-block;
                margin-right: 10px;
            }

            .menu li a {
                color: #333;
                text-decoration: none;
                padding: 5px 10px;
                border-radius: 5px;
            }

            .menu li a.active {
                background-color: #333;
                color: #fff;
            }

            div.detail {
                margin-top: 20px;
                border: 1px solid #ccc;
                padding: 10px;
                border-radius: 5px;
            }

            div.detail span {
                display: block;
                margin-bottom: 10px;
            }

            div.detail span img {
                max-width: 100%;
                height: auto;
                border-radius: 5px;
            }

            h1 {
                color: #333;
                text-align: center;
                margin-top: 40px;
            }
            /* Logo */
            .logo {
                width: 400px;
                height: 50px;
                float: right;
                transition-duration: .1s;
                margin-right: -20px;
            }
            .logo:hover {
                transform: scale(1.05)
            }
            .logo img {
                width: 100%;
                height: 100%;
                vertical-align: middle;
            }
            /* ======= End logo ======== */

            
        </style>
        <script type="text/javascript">
          
             function buy(id) {
                    id = id.trim();
                    
                        var mValue = 1; // Tránh lỗi 'Cannot read properties of undefined' bằng cách kiểm tra m trước khi truy cập thuộc tính 'value'
                        document.f.action = "buy?id=" + id + "&num=" + mValue;
                        document.f.submit();
                    
//                        id = id.trim();
//                        var m = document.f.num.value;
//                        document.f.action = "buy?id=" + id + "&num=" + m;
//                        document.f.submit();

                    }
        </script>
    </head>
    <body>
        <div id="wrapper">
            <img src="images/blackFriday.gif" alt="" style="width: 101.7%;">
            <a href="home"><img src="images/home_icon.png" width= "45px" height="45px" alt="home"/></a>
            <a class="logo"><img src="images/logo.jpg" ></a>
               
            <div class="topnav" style="width: 101.7%">
                <div><form action="home1" method="get">
                        <input type="text" placeholder="Search..." name="key"/> 
                    <button onclick="this.form.submit()"> 
                        <img src="images/search_icon.png" width ="16px" height="16px"/>
                    </button>
                   <c:if test="${sessionScope.account!=null}">
                        
                        <a href="logout">
                            Đăng Xuất
                        </a>
                        &nbsp;&nbsp;&nbsp;
                        <span style="color:red">[ ${sessionScope.account.username} ]</span>
                    </c:if>
                    <c:if test="${sessionScope.account==null}">
                        
                        <a href="login1">
                            Đăng Nhập
                        </a>
                    </c:if>
             


                </form></div>
            
                    
            <div class="clr"></div>
            <div id="menu_tab">
                <c:set var="cat" value="${requestScope.data}"/>
                <c:set var="cid" value="${requestScope.cid}"/>
                <ul class="menu">
                    <li><a class="${cid==0?"active":""}" href="home1?cid=${0}">ALL</a></li>
                    <c:forEach items="${cat}" var="c">
                    <li><a class="${c.id==cid?"active":""}" href="home1?cid=${c.id}">${c.name}</a></li>
                    </c:forEach>
                    
                </ul>
                    
            </div>
                    
        </div>
                    <div id="wrapper">
                        <!-- Các phần khác của trang bạn ở đây -->
                        <div class="detail">
                            <c:set var="c" value="${requestScope.student}"/>
                            <span>ID : ${c.id}</span>
                            <span>Tên : ${c.name}</span>
                            <span>Số lượng : ${c.quantity}</span>
                            <span>Giá : ${c.price}</span>
                            <span>Ngày sản xuất : ${c.releaseDate}</span>
                            <span>Mô tả : ${c.describe}</span>
                            <span>Ảnh : <img src="${c.image}"></span>
                            <span>Category ID : ${c.category.id}</span>
                        </div>
                            <form name="f" action="buy" method="post">
                                <input style="display: none" type="number" name="num" value="1">
                                <input type="button" onclick="buy('${c.id}')" value="Thêm vào giỏ hàng"/> 
                               
                            </form>
                    </div>
                                <div class="footer" style="width: 101% ; margin-left:10px; ">
                                    <%@include file="footer.jsp" %>
                                </div>  

    </body>
</html>
