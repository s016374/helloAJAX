package com.ztx.qa.ajax.app.beans;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

/**
 * Created by s016374 on 15/8/27.
 */
public class ShoppingCartTest {

    ShoppingCart shoppingCart = new ShoppingCart();

    @Test
    public void testJackson() throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        String result = objectMapper.writeValueAsString(shoppingCart);
        System.out.println(result);
    }
}