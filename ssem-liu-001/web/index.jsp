<%--
  Created by IntelliJ IDEA.
  User: ljh17
  Date: 2020/11/25
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style>
      a{
        text-decoration: none;
        color: black;
        font-size: 18px;
      }

      h3{
        width: 500px;
        height: 40px;
        margin: 100px auto;
        text-align: center;
        line-height: 40px;
        background: aqua;
        border-radius: 30px;
      }



    </style>
  </head>
  <body>
  <h3>
    <a href="${pageContext.request.contextPath}/book/allBook">进入书籍</a>
  </h3>
  </body>
</html>
