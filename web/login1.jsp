<%-- 
    Document   : login1
    Created on : Dec 24, 2023, 5:46:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <!-- Your login form -->
         <h3 style="color: red">${requestScope.ms}</h3>
        <form action="login1" method="post">
            <!-- Login form fields -->
            <input type="text" id="user" name="user" placeholder="Username"><br>
            <input type="password" id="pass" name="pass" placeholder="Password"><br>
            <input type="submit" value="Đăng Nhập"/>
            <a href="register">Đăng Kí</a>
        </form>

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
        </style>
    </body>
</html>

<!--        <h1>Login Page</h1>
        <h3 style="color: red">${requestScope.ms}</h3>
        <form action="login1" method="post">
            enter username:<input type="text" name="user" /><br/>
            enter password:<input type="password" name="pass"/><br/>
            <input type="submit" value="LOGIN"/>
            <button onclick="openRegisterForm()">Register</button>
        </form>-->