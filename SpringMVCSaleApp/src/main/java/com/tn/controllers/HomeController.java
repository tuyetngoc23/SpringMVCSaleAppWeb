/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.controllers;

import com.tn.Utils.Utils;
import com.tn.pojo.Cart;
import com.tn.repository.CategoryRepository;
import com.tn.service.CategoryService;
import com.tn.service.ProductService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class HomeController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;
    
    @ModelAttribute
    public void addAttribute(Model model, HttpSession session){
        model.addAttribute("category", this.categoryService.getCategory());
        model.addAttribute("cartStats", Utils.getCartStats((Map<Integer, Cart>) session.getAttribute("cart")));
    }

    @RequestMapping("/")
    public String index(Model model,
            @RequestParam(name = "cateId", required = false) String cateId,
            @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        
        if (cateId == null) {
            model.addAttribute("products", this.productService.getProducts(kw));
        } else {
            model.addAttribute("products",
                    this.categoryService.getCateById(Integer.parseInt(cateId)).getProducts());
        }
        return "index";
    }
}
