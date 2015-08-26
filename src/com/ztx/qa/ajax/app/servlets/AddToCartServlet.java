package com.ztx.qa.ajax.app.servlets;

import com.ztx.qa.ajax.app.beans.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by s016374 on 15/8/26.
 */
@WebServlet(name = "AddToCartServlet", urlPatterns = {"/addToCart"})
public class AddToCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookName = request.getParameter("id");
        int price = Integer.parseInt(request.getParameter("price"));

        HttpSession httpSession = request.getSession();
        ShoppingCart shoppingCart = (ShoppingCart) httpSession.getAttribute("sc");

        if (null == shoppingCart) {
            shoppingCart = new ShoppingCart();
            httpSession.setAttribute("sc", shoppingCart);
        }

        shoppingCart.addToCart(bookName, price);

        /*{"bookName":bookName,"totalBookNumber":totalBookNumber,"totalBookMoney":totalBookMoney}*/
        StringBuilder result = new StringBuilder();
        result.append("{")
                .append("\"bookName\":" + "\"" + bookName + "\"")
                .append(",")
                .append("\"totalBookNumber\":" + shoppingCart.getTotalBookNumber())
                .append(",")
                .append("\"totalBookMoney\":" + shoppingCart.getTotalBookMoney())
                .append("}");

        response.setContentType("text/javascript;charset=UTF-8");
        response.getWriter().print(result.toString());
    }
}
