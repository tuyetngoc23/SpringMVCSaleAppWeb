/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.Utils;

import com.tn.pojo.Cart;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class Utils {
    public static Map<String, BigDecimal> getCartStats(Map<Integer, Cart> cart){
        int quantity = 0;
        BigDecimal totalAmount = new BigDecimal(0);
        
        if(cart != null){
            for(Cart c: cart.values()){
                quantity += c.getQuantity();
                totalAmount = totalAmount.add(c.getPrice().multiply(new BigDecimal(c.getQuantity())));
            }
        }
        
        Map<String, BigDecimal> result = new HashMap<>();
        result.put("totalQuantity", new BigDecimal(quantity));
        result.put("totalAmount", totalAmount);
        
        return result;
    }
}
