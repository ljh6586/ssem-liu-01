<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ljh17
  Date: 2020/11/25
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
     <title>书籍展示</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
        <div class="page-header">
            <h1>
                <small>
                    书籍列表-----显示所有书籍
                </small>
            </h1>
        </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <%--toaddBook跳转--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">
                    新增书籍
                </a>
            </div>
        </div>
    </div>


    <div class="row clearfix">

        <div class="col-md-12 column">

            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍描述</th>
                    <th>修改</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach  items="${list}" var="books">
                    <tr>
                        <td>${books.bookId}</td>
                        <td>${books.bookName}</td>
                        <td>${books.bookCounts}</td>
                        <td>${books.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdate">
                                修改
                            </a> |&nbsp;

                            <a href="">
                                删除
                            </a>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>

            </table>

        </div>

    </div>

</div>

<%--${list}--%>



</body>
</html>
