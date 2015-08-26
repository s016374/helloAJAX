package com.ztx.qa.ajax.app.beans;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by s016374 on 15/8/26.
 */
public class ShoppingCart {
    private String bookName;
    private Map<String, ShoppingCartItem> itemMap = new HashMap<String, ShoppingCartItem>();

    public void addToCart(String bookName, int price) {
        this.bookName = bookName;

        if (itemMap.containsKey(bookName)) {
            ShoppingCartItem shoppingCartItem = itemMap.get(bookName);
            shoppingCartItem.setNumber(shoppingCartItem.getNumber() + 1);
        } else {
            ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
            shoppingCartItem.setBookName(bookName);
            shoppingCartItem.setPrice(price);
            shoppingCartItem.setNumber(1);
            itemMap.put(bookName, shoppingCartItem);
        }
    }

    public int getTotalBookNumber() {
        int total = 0;
        for (ShoppingCartItem shoppingCartItem : itemMap.values()) {
            total += shoppingCartItem.getNumber();
        }

        return total;
    }

    public int getTotalBookMoney() {
        int money = 0;
        for (ShoppingCartItem shoppingCartItem : itemMap.values()) {
            money += shoppingCartItem.getNumber() * shoppingCartItem.getPrice();
        }
        return money;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public Map<String, ShoppingCartItem> getItemMap() {
        return itemMap;
    }

    public void setItemMap(Map<String, ShoppingCartItem> itemMap) {
        this.itemMap = itemMap;
    }
}
