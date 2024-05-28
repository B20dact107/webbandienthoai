<%-- 
    Document   : list
    Created on : Sep 3, 2023, 9:14:50 PM
    Author     : Admin
--%>

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
                  function setCheck1(obj) {
                      var fries = document.getElementsByName('price');
                      if ((obj.id == 'g0') && (fries[0].checked == true))
                      {
                          for (var i = 1; i < fries.length; i++)
                              fries[i].checked = false;
                      } else {
                          for (var i = 1; i < fries.length; i++) {
                              if (fries[i].checked = true) {
                                  fries[0].checked = false;
                                  break;
                              }
                          }
                      }
                      document.getElementById("f2").submit();
                  }
             function buy(id) {
                    id = id.trim();
                    
                        var mValue = 1; // Tránh lỗi 'Cannot read properties of undefined' bằng cách kiểm tra m trước khi truy cập thuộc tính 'value'
                        document.f.action = "buy?id=" + id + "&num=" + mValue;
                        document.f.submit();
//                        id = id.trim();
//                        var m = document.f.num.value;
//                        document.f.action = "buy?id=" + id + "&num=" + m;
//                        document.f.submit();
        setTimeout(function() {
        var confirmation = confirm("Khách hàng thêm hàng vào giỏ thành công!"); // Hiển thị thông báo
        if (confirmation) {
            // Nếu người dùng chọn "OK" trong cửa sổ xác nhận
            // Bạn có thể chuyển hướng hoặc thực hiện các hành động khác tùy vào logic của bạn
            // Ví dụ:
            window.location = "home"; // Chuyển hướng đến trang shop sau khi mua hàng thành công
        } else {
            // Nếu người dùng chọn "Cancel" trong cửa sổ xác nhận
            // Không làm gì cả hoặc thực hiện hành động khác tùy vào logic của bạn
            }
        }, 2000); // Giả định mua hàng thành công sau 2 giây (2000 ms)
                    }
        </script>
        <style>
 /*         #bag{
               text-align: right;
               margin-right: 30px;
               margin-top: 30px;
           
#bag {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    margin-top: 10px;
    margin-right: 30px;
}*/
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
/*    text-decoration: underline;*/
     transform: scale(1.1)
}
.topnav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-right: 30px;
    width:101.7%;
    height: 40px;
}

.topnav form {
    display: flex;
    align-items: center;
    margin-right: 20px;
}

.nav-links {
    display: flex;
    align-items: center;
    margin-right: 20px;
}

.nav-links a {
    color: #333;
    text-decoration: none;
    padding: 5px 10px;
    border-radius: 5px;
    transition: all 0.3s ease;
    margin-right: 10px;
}

.nav-links a:hover {
    background-color: #ccc;
    
}

.username {
    color: red;
    margin-right: 10px;
}

input[type="text"] {
    padding: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

button {
    border: none;
    background: none;
    cursor: pointer;
    padding: 5px;
}

button img {
    vertical-align: middle;
}

#tab1{
    width: 15%;
    float: left;
    background-color: #E2D9BC;
   height :500px;
   margin-left: -20px;
   border-radius: 20px;

}
/* Logo */
.logo {
    width: 400px;
    height: 50px;
    float: right;
    transition-duration: .1s;
    margin-right: -30px;
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
    
    </head>
    <body>
        <div id="wrapper">
            <img src="images/blackFriday.gif" alt="" style="width: 101.7%;">
            <a href="home"><img src="images/home_icon.png" width= "50px" height="50px" alt="home"/></a>
            <a class="logo"><img src="images/logo.jpg" ></a>
              
            <div class="topnav">
                
                <div><form action="home1" method="get">
                    <input type="text" placeholder="Search..." name="key"/>
                    <button onclick="this.form.submit()"> 
                        <img src="images/search_icon.png" width ="16px" height="16px"/>
                    </button>
<!--                      
                     
                      <c:if test="${sessionScope.account!=null}">
                          <p>${sessionScope.account} </p>
                          <div class="nav-links">
                              <a href="quanly.jsp">User Info</a>
                              <a href="logout">Logout</a>
                              <span class="username">[ ${sessionScope.account.username} ]</span>
                          </div>
                      </c:if>
                      <c:if test="${sessionScope.account==null}">
                          <div class="nav-links">
                              <a href="login">Login</a>
                          </div>
                      </c:if>
-->                             
<c:choose>
    <c:when test="${sessionScope.account != null and sessionScope.account.getClass().getName() eq 'model.Admin'}">
        <!-- Hiển thị User Info cho Admin -->
        <div class="nav-links">
            <a href="quanly">Quản Lý</a>
            <a href="logout">Đăng Xuất</a>
            <span class="username">[ ${sessionScope.account.username} ]</span>
        </div>
    </c:when>
    <c:when test="${sessionScope.account != null and sessionScope.account.getClass().getName() eq 'model.Customer'}">
        <!-- Hiển thị User Info cho Customer -->
        <div class="nav-links">
            
            <a href="xemhoadon?cid=${sessionScope.makh}">Xem lịch sử mua</a>
            <a href="logout">Đăng Xuất</a>
            <span class="username">[ ${sessionScope.account.username} ]</span>
        </div>
    </c:when>
    <c:otherwise>
        <!-- Hiển thị nút Login khi không có người dùng đăng nhập -->
        <div class="nav-links">
            <a href="login1">Đăng Nhập</a>
        </div>
    </c:otherwise>
</c:choose>
                </form></div>
                <div id="bag">
<!--                <img src="images/download.png" width="30px" height="30px"/>-->
                <a href="show"><i class="fas fa-shopping-cart"></i>(${requestScope.size})</a>
            </div> 
            </div>
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
                 <h3 style="color: blue">${requestScope.ms1}</h3>
            <div class="clr"></div>
            <div id="content">
                <div id="tab1">
                    <c:set var="chid" value="${requestScope.chid}"/>
                    <h4 style="color: chocolate">Tên Hãng</h4>
                    <hr style="border-top: 1px solid chocolate"/>
                    <form id="f1" action="home1">
                        <input type="checkbox" id="c0" name="cidd"
                               ${chid[0]?"checked":""}
                               value="${0}" onclick="setCheck(this)"/> All<br/>
                        <c:forEach begin="0" end ="${cat.size()-1}" var="i">

                            <input type="checkbox" id="cm" name="cidd"
                                   ${cat.get(i).getId()==cid? "checked":""}
                                   value="${cat.get(i).getId()}"
                                   ${chid[i+1]?"checked":""} onclick="setCheck(this)"/>
                            ${cat.get(i).getName()}      
                            <br/>  
                        </c:forEach>
                    </form>
                        
                    <h4 style="color: chocolate">Mức Giá</h4>
                    <hr style="border-top: 1px solid chocolate"/>
                    <c:set var="pp" value="${requestScope.pp}"/>
                    <c:set var="pb" value="${requestScope.pb}"/>
                    <form id="f2" action="home1">
                        <input type="checkbox" id="g0" name="price"
                               ${pb[0]?"checked":""}
                               value="0" onclick="setCheck1(this)"/> All<br/>
                        <c:forEach begin="0" end ="${4}" var="i">
                            <input type="checkbox" id="gl" name="price"
                                   ${pb[i+1]? "checked":""}
                                   value="${(i+1)}" onclick="setCheck1(this)"/>
                            ${pp[i]}      
                            <br/>    
                        </c:forEach>
                    </form>
                </div>
                <div id="tab2">
                    
                    <c:set var="news" value="${requestScope.news}"/>
                    <c:if test="${news!=null}">
                        <h4 style="color : chocolate"> Điện Thoại mới</h4>
                        <ul class="item">
                            <c:forEach items="${news}" var="p">
                                <li>
                                    <a href="chitietsp?id=${p.id}">
                                        <img src="${p.image}" width="80px" height="80px" />
                                        <p>${p.name}</p>
                                        <p>Giá gốc:<span class="old"> ${(p.price)}</span>VND</p>
                                        <p>Sale:${(p.price)}VND</p>
                                         
                                   </a>
                                        <form name="f" id="f" action="buy" method="post">
                                            <!-- Đảm bảo phần tử input có name là "num" -->
                                            <input style="display: none" type="number" name="num" value="1">
                                            <!-- Các input khác và nút "Buy item" -->
                                            <input type="button" onclick="buy('${p.id}')" value="Mua"/> 
                                        </form>
   <!--                                              <form name="f" action="buy" method="post">
                                             <input style="display: none" type="number" name="num" value="1">
                                        <input type="button" onclick="buy('')" value="Buy item"/> 
                                         </form>-->
                                </li>
                            </c:forEach>
                        </ul>
                        <hr/>
                    </c:if>
                        <c:set var="olds" value="${requestScope.olds}"/>
                        <c:if test="${olds!=null}">
                            <h4 style="color : chocolate"> Điện Thoại Cũ</h4>
                            <ul class="item">
                                <c:forEach items="${olds}" var="p">
                                    <li>
                                        <a href="chitietsp?id=${p.id}">
                                            <img src="${p.image}" width="80px" height="80px" />
                                            <p>${p.name}</p>
                                            <p>Giá gốc:<span class="old"> ${(p.price)}</span>VND</p>
                                            <p>Sale:${(p.price)}VND</p>
                                            
                                        </a>
                                            <form name="f" action="buy" method="post">
                                                <input style="display: none" type="number" name="num" value="1">
                                                <input type="button" onclick="buy('${p.id}')" value="Mua"/> 
                                            </form>
                                    </li>
                                </c:forEach>
                            </ul>
                            <hr/>
                        </c:if>
                            <c:set var="list" value="${requestScope.products}"/>
                            <c:if test="${list!=null}">
                                <h4 style="color : chocolate">Điện Thoại(${list.size()} sản phẩm)</h4>
                                <ul class="item">
                                    <c:forEach items="${list}" var="p">
                                        <li>
                                            <a href="chitietsp?id=${p.id}">
                                                <img src="${p.image}" width="80px" height="80px" />
                                                <p>${p.name}</p>
                                                <p>Giá gốc:<span class="old"> ${(p.price)}</span>VND</p>
                                                <p>Sale:${(p.price)}VND</p>
                                            </a> <form name="f" action="buy" method="post">
                                                    <input style="display: none" type="number" name="num" value="1">
                                                    <input type="button" onclick="buy('${p.id}')" value="Mua"/> 
                                                </form>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </c:if>    
                </div>
            </div>
                            <div class="clr"></div>
                            
         </div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>                    
    </body>
</html>
