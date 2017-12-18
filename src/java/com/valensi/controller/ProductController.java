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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/home")
public class ProductController {

    int pertambahan;
    
    @Autowired
    ProductService ps;
    
    @RequestMapping()
    public String homePage() {
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

//    @RequestMapping(value = "/save")
//    public String SaveProduct(@ModelAttribute("productBean") ProductFormBean productBean,
//            Model model) {
//
//        Product product = new Product();
//        product.setProductCode(productBean.getProductCode());
//        product.setProductName(productBean.getProductName());
//        product.setProductPrice(Double.valueOf(productBean.getProductPrice()));
//        product.setQuantity(Integer.valueOf(productBean.getQuantity()));
//
//        ps.saveProduct(product);
//
//        model.addAttribute("dataproduct", productBean);
//        return "redirect:/home";
//    }


    @RequestMapping(value = "/product/{productId}")
    public String showOneProduct(@PathVariable Integer productId, Model model) {
        Product prod = ps.findById(productId);
        model.addAttribute("product", prod);
        return "productdetail"; //Harus sama dengan nama jsp
    }
    
    @RequestMapping(value="/product/addCart/{productId}")
    public String addtocart(HttpSession session, @PathVariable Integer productId ){
      Product prod = ps.findById(productId);
      int interator;
      
      Cart cart = (Cart) session.getAttribute("cart");
      
      if(cart == null){
          cart = new Cart();
      
      }
      pertambahan++;
      cart.getCartItems().put(pertambahan, prod);
      interator = cart.getCartItems().size();
      
      session.setAttribute("interator", interator);
      session.setAttribute("cart", cart);
      return "redirect:/home";
      
      
      
      
    
    }

}