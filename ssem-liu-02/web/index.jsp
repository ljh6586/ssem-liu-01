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

  <script src="http://lib.sinaapp.com/js/jquery/2.2.4/jquery-2.2.4.min.js"></script>
  11
  <script type="text/javascript">
      12
      window.jQuery || document.write(unescape("%3Cscript src='/skin/mobile/js/jquery.min.js' type='text/javascript'%3E%3C/script%3E"))
      13
  </script>

  <script>
      function a() {
          $.post({
              url:"${pageContext.request.contextPath}/a1",
              data:{"name":$("#uername").val()},
              success:function (data) {
                  console.log(data.toString());
                  if(data.toString()==='ok'){
                      $("#pwd").css("color","green");
                      $("#uername").css("color","green");
                      // console.log(1)
                  }
                  else {
                      $("#pwd").css("color","red");
                      $("#uername").css("color","red");
                  }
                  $("#pwd").html(data);
              }
          })
      }
      function a1() {
          $.post({
              url:"${pageContext.request.contextPath}/a1",
              data:{"name":$("#uername1").val()},
              success:function (data) {
                if(data.toString()==='ok'){
                    $("#uername1").css("background","green");
                }
              }
          })
      }

  </script>
</head>
<body>
用户名<input type="text" id="uername" onblur="a()">
<span id="pwd"></span>
用户名<input type="text" id="uername1" onblur="a1()">
<span id="pwd1"></span>

</body>
</html>
