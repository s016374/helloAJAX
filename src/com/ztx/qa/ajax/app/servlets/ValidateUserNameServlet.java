package com.ztx.qa.ajax.app.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Created by s016374 on 15/8/26.
 */
public class ValidateUserNameServlet extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        List<String> userNames = Arrays.asList("AAA", "BBB", "CCC");
        String userName = request.getParameter("userName");
        String result = null;

        if (userNames.contains(userName)) {
            result = "<font color='red'> 已存在</font>";
        } else {
            result = "<font color='green'>可用</font>";
        }

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(result);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
