<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/25
  Time: 下午5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show html by jquery</title>
    <script type="text/javascript" src="../scripts/jquery-1.9.1.min.js"></script>
    <script>
        $(function () {
            $("a").click(function () {
                var url = this.href + " h2";
                var args = {"time": new Date()};

                $("#details").load(url, args);

                return false;
            });
        });
    </script>
</head>
<body>
<p>People</p>
<ul>
    <li><a href="files/tom.html">Tom</a></li>
    <li><a href="files/Mary.html">Mary</a></li>
</ul>
<div id="details"></div>
</body>
</html>
