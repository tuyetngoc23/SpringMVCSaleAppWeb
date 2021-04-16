/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.controllers;

import com.tn.pojo.Cart;
import com.tn.pojo.Product;
import com.tn.service.OrderService;
import com.tn.service.ProductService;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@RestController
@RequestMapping("/api")
public class ApiCartController {
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    
    @GetMapping("/cart/{productId}")
    @ResponseStatus(HttpStatus.OK)
    public void addToCart(@PathVariable(name="productId") int productId, 
            HttpSession session){
        Map<Integer, Cart> cart = (Map<Integer, Cart>) session.getAttribute("cart");
        
        if(cart == null)
            cart = new HashMap<>();
        if(cart.containsKey(productId) == true){
            Cart c = cart.get(productId);
            c.setQuantity(c.getQuantity() + 1);
        }else{
            Product p = this.productService.getProductId(productId);
            Cart c = new Cart();
            c.setProductId(p.getId());
            c.setProductName(p.getName());
            c.setPrice(p.getPrice());
            c.setQuantity(1);
            
            cart.put(productId, c);
        }
        
        session.setAttribute("cart", cart);
    }
    
    @GetMapping("/cart/{productId}/{quantity}")
    @ResponseStatus(HttpStatus.OK)
    public void changeNumber(@PathVariable(name="productId") int productId,
            @PathVariable(name="quantity") int quantity,
            HttpSession session){
        Map<Integer, Cart> cart = (Map<Integer, Cart>) session.getAttribute("cart");
        if(cart.containsKey(productId) == true){
            Cart c = cart.get(productId);
            c.setQuantity(c.getQuantity() + quantity);
        }
        session.setAttribute("cart", cart);
    }
    
    @PostMapping("/pay")
    @ResponseStatus(HttpStatus.OK)
    public void saveOrder(HttpSession session){
        Map<Integer, Cart> cart = (Map<Integer, Cart>) session.getAttribute("cart");
        if(this.orderService.addOrder(cart) == true)
            session.removeAttribute("cart");
    }
}
