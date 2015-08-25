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
                                var result = request.responseXML;

                                var name = result.getElementsByTagName("name")[0].firstChild.nodeValue;
                                var website = result.getElementsByTagName("website")[0].firstChild.nodeValue;
                                var email = result.getElementsByTagName("email")[0].firstChild.nodeValue;

                                var aNode = document.createElement("a");
                                aNode.appendChild(document.createTextNode(name));
                                aNode.href = "mailto:" + email;

                                var h2Node = document.createElement("h2");
                                h2Node.appendChild(aNode);

                                var aNode2 = document.createElement("a");
                                aNode2.appendChild(document.createTextNode(website));
                                aNode2.href = website;

                                var detailsNode = document.getElementById("details");
                                detailsNode.innerHTML = "";
                                detailsNode.appendChild(h2Node);
                                detailsNode.appendChild(aNode2);
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
    <li><a href="files/Mike.xml">Mike</a></li>
    <li><a href="files/Jane.xml">Jane</a></li>
</ul>
<div id="details"></div>
</body>
</html>
