<%-- 
    Document   : login
    Created on : Sep 19, 2023, 12:50:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN Page</title>
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
           }*/
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

h3 {
    text-align: center;
    color: red;
}

form {
    max-width: 300px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form input[type="text"],
form input[type="password"],
form input[type="submit"] {
    display: block;
    margin-bottom: 15px;
    width: calc(100% - 10px);
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
        <h1>Login Admin</h1>
        <h3 style="color: red">${requestScope.ms}</h3>
        <form action="login" method="post">
            Nhập tài khoản:<input type="text" name="user"/><br/>
            Nhập mật khẩu:<input type="password" name="pass"/><br/>
            <input type="submit" value="Đăng Nhập"/>
        </form>
    </body>
</html>
