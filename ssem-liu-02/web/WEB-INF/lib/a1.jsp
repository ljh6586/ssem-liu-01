<%--
  Created by IntelliJ IDEA.
  User: ljh17
  Date: 2020/12/2
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script>
    <script>
        function a() {
            $.post({
                url:"${pageContext.request.contextPath}/a2",
                data:{"":$("#uername").val()}

            })
        }

    </script>
</head>
<body>
用户名<input type="text" class="uername" onblur="a()">

</body>
</html>
