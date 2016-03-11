package com.emusicstore.controller.admin;

import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @RequestMapping
    private String adminPage() {
        return "admin";
    }

    @RequestMapping(value = "/productInventory")
    public String productInventory(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);
        return "productInventory";
    }

    @RequestMapping(value = "/customer")
    public String customerManagement(Model model) {

        return "customerManagement";
    }

}
