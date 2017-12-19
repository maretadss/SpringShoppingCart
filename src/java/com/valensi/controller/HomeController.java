/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.dao.ProductService;
import com.valensi.model.Cart;
import com.valensi.model.Product;
import com.valensi.model.ProductFormBean;
import java.util.List;
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
@RequestMapping("/home")
public class HomeController {

    int add;
    double total;
    
    @Autowired
    ProductService ps;
    
    @RequestMapping()
    public String homePage(Model model) {
        ProductFormBean productBeans = new ProductFormBean();
        model.addAttribute("productBean", productBeans);
        List<Product> prods = ps.findAll();
        model.addAttribute("prods", prods);
        return "home";

    }

    @RequestMapping(value="/product")
    public String productForm(Model model) {
        ProductFormBean productBeans = new ProductFormBean();
        model.addAttribute("productBean", productBeans);
        List<Product> prods = ps.findAll();
        model.addAttribute("prods", prods);
        return "product"; //Harus sama dengan nama jsp
    }



    @RequestMapping(value = "/product/{productId}")
    public String showOneProduct(@PathVariable Integer productId, Model model) {
        Product prod = ps.findById(productId);
        model.addAttribute("product", prod);
        return "productdetail"; //Harus sama dengan nama jsp
    }
    
    @RequestMapping(value="/product/addCart/{productId}")
    public String addtoCart(HttpSession session, @PathVariable Integer productId ){
      Product prod = ps.findById(productId);
      int interator;
      
      Cart cart = (Cart) session.getAttribute("cart");
      
      if(cart == null){
          cart = new Cart();
      
      }
      add++;
      cart.getCartItems().put(add, prod);
      interator = cart.getCartItems().size();
      total = 0.0;
      for (Product p : cart.getCartItems().values()) {
          total +=p.getProductPrice();
        }
      session.setAttribute("total", total);
      session.setAttribute("interator", interator);
      session.setAttribute("cart", cart);
      return "redirect:/home";
      
    }
}
