<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/26
  Time: 上午11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>app1</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
    <script>
        $(function () {
            $(":input[name = 'userName']").change(function () {
                var val = $(this).val();
                val = $.trim(val);

                if ("" != val) {
                    var url = "${pageContext.request.contextPath}/validateUserName";
                    var args = {"userName":val, "time":new Date()};

                    $.post(url, args, function(data) {
                        $("#message").html(data);
                    });
                }
            });
        });
    </script>
</head>
<body>
<form action="" method="POST">
    User Name: <input type="input" name="userName"/><br>

    <div id="message"></div>
    <br>
    <input type="submit" value="SUMBIT"/>
</form>
</body>
</html>
