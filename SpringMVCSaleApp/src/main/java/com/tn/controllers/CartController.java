/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class CartController {
    @GetMapping("/cart")
    public String Cart(Model model, HttpSession session){
        model.addAttribute("cart", session.getAttribute("cart"));
        return "cart";
    }
}
