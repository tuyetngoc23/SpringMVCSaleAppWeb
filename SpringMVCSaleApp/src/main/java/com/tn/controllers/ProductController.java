/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.controllers;

import com.tn.pojo.Product;
import com.tn.service.ProductService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/products")
public class ProductController {
    @Autowired
    private ProductService productService;
    @GetMapping("/")
    public String addOrUpdateView(Model model, 
            @RequestParam(name="productId", defaultValue = "0") int productId){
        if(productId > 0)
            model.addAttribute("product", this.productService.getProductId(productId));
        else
            model.addAttribute("product", new Product());
        return "product";
    }
    
    @PostMapping("/")
    public String addOrUpdateProduct(Model model,
            @ModelAttribute(value = "product") @Valid Product product, BindingResult err){
        if(err.hasErrors()){
            return "product";
        }
        if(!this.productService.addOrUpdateProduct(product)){
            model.addAttribute("errMsg", "He thong co van de");
            return "product";
        }
        return "redirect:/";
    }
}
