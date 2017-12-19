/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.dao.ProductService;
import com.valensi.model.Cart;
import com.valensi.model.Product;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    int del;
    double total;

    @Autowired
    ProductService ps;

    @RequestMapping()
    public String showListCart() {

        return "cart";
    }

//    @RequestMapping(value = "/{productId}")
//    public String showOneProduct(@PathVariable Integer productId, Model model) {
//        Product prod = ps.findById(productId);
//        model.addAttribute("cart", prod);
//        return "productdetail"; //Harus sama dengan nama jsp
//    }
    @RequestMapping(value = "/remove/{productId}")
    public String deleteCart(HttpSession session, @PathVariable Integer productId) {
        int interator;
        Product prod = ps.findById(productId);

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
        }
        del++;
        cart.getCartItems().remove(del, prod);
        interator = cart.getCartItems().size();
        total = 0.0;
        for (Product p : cart.getCartItems().values()) {
            total += p.getProductPrice();
        }
        session.setAttribute("total", total);
        session.setAttribute("interator", interator);
        session.setAttribute("cart", cart);
        return "redirect:/cart";

    }
}
