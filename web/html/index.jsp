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
    <title>Show Detail by html</title>
    <script type="text/javascript">
        window.onload = function () {
            var aNodes = document.getElementsByTagName("a");
            for (var i = 0; i < aNodes.length; i++) {
                aNodes[i].onclick = function () {
                    var request = new XMLHttpRequest();
                    var method = "GET";
                    var url = this.href;

                    request.open(method, url);
                    request.send(null);

                    request.onreadystatechange = function () {
                        if (request.readyState == 4) {
                            if (request.status == 200 || request.status == 304) {
                                document.getElementById("details").innerHTML = request.responseText;
                            }
                        }
                    };
                    return false;
                };
            }
        };
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
