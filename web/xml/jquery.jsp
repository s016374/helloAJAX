<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/24
  Time: 下午5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Detail by xml</title>
    <script type="text/javascript" src="../scripts/jquery-1.9.1.min.js"></script>
    <script>
        $(function () {
            $("a").click(function () {
                var url = this.href;
                var args = {"time" : new Date()};

                $.post(url, args, function(data) {
                    var name = $(data).find("name").text();
                    var website = $(data).find("website").text();
                    var email = $(data).find("email").text();

                    $("#details").empty()
                            .append("<h2>Name:" + name + "</h2>")
                            .append("<p>Website:" + website + "</p>")
                            .append("<p>Email:" + email + "</p>");
                });

                return false;
            });
        });
    </script>
</head>
<body>
<p>People</p>
<ul>
    <li><a href="files/Mike.xml">Mike</a></li>
    <li><a href="files/Jane.xml">Jane</a></li>
</ul>
<div id="details"></div>
</body>
</html>
