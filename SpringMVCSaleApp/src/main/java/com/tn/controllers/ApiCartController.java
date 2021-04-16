/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.controllers;

import com.tn.service.ProductService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
    
    public void addToCart(@PathVariable(name="productId") int productId, 
            HttpSession session){
        
    }
}
