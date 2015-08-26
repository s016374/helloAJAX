<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/25
  Time: 下午4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery</title>
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <script>
        $(function() {
            $("a").click(function() {
                var url = this.href;
                var args = {"time":new Date()};

                $("#details").load(url, args);

                return false;
            });
        });
    </script>
</head>
<body>
<a href="helloAJAX.txt" id="helloWorld">AJAX by jquery</a>
<hr>
<div id="details"></div>
</body>
</html>
