<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/8/26
  Time: 下午1:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>app2</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
    <script>
        $(function () {
            var isHasCart = "${null == sessionScope.sc}";
            if ("true" == isHasCart) {
                $("#cartStatus").hide();
            } else {
                $("#cartStatus").show();
                $("#bookName").text("${sessionScope.sc.bookName}");
                $("#totalBookNumber").text("${sessionScope.sc.totalBookNumber}");
                $("#totalBookMoney").text("${sessionScope.sc.totalBookMoney}");
            }

            $("a").click(function () {
                $("#cartStatus").show();
                var url = this.href;
                var args = {"time": new Date()};

                $.getJSON(url, args, function (data) {
                    $("#bookName").text(data.bookName);
                    $("#totalBookNumber").text(data.totalBookNumber);
                    $("#totalBookMoney").text(data.totalBookMoney);
                });

                return false;
            });
        });
    </script>
</head>
<body>
<div id="cartStatus">
    <h5>您已将&nbsp;<span style="color: blue; font-size: large" id="bookName"></span>&nbsp;加入到购物车；
        共计&nbsp;<span style="color: blue; font-size: large" id="totalBookNumber"></span>&nbsp;本；
        总价&nbsp;<span style="color: blue; font-size: large" id="totalBookMoney"></span>&nbsp;元。</h5>
</div>
<hr>
Spring:&nbsp;&nbsp;&nbsp;<a style="color:green; font-size: xx-small"
                            href="${pageContext.request.contextPath}/addToCart?id=spring&price=50">购买</a><br>
Struts:&nbsp;&nbsp;&nbsp;<a style="color:green; font-size: xx-small"
                            href="${pageContext.request.contextPath}/addToCart?id=struts&price=60">购买</a><br>
Hibernate:&nbsp;&nbsp;&nbsp;<a style="color:green; font-size: xx-small"
                               href="${pageContext.request.contextPath}/addToCart?id=hibernate&price=70">购买</a><br>
</body>
</html>
