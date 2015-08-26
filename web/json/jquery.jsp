<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/25
  Time: 下午4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Detail by json</title>
    <script type="text/javascript" src="../scripts/jquery-1.9.1.min.js"></script>
    <script>
        $(function () {
            $("a").click(function () {
                var url = this.href;
                var args = {"time" : new Date()};

                $.getJSON(url, args, function(data) {
                    var name = data.person.name;
                    var website = data.person.website;
                    var email = data.person.email;

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
    <li><a href="files/Andy.json">Andy</a></li>
    <li><a href="files/Amy.json">Amy</a></li>
</ul>
<div id="details"></div>
</body>
</html>
