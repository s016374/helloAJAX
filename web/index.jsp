<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/24
  Time: 下午6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hello World</title>
    <script type="text/javascript">
        window.onload = function () {
            document.getElementById("helloWorld").onclick = function () {
                var request = new XMLHttpRequest();
                var url = this.href;

                request.open("POST", url);
                request.setRequestHeader("ContentType", "application/x-www-form-urlencoded");
//                request.send(null); //GET
                request.send("para='sam'");

                request.onreadystatechange = function () {
                    if (request.readyState == 4) {
                        if (request.status == 200 || request.status == 304) {
                            alert(request.responseText);
                        }
                    }
                };
                return false;
            };
        };
    </script>
</head>
<body>
<a href="helloAJAX.txt" id="helloWorld">Hello AJAX</a>
</body>
</html>
