package com.emusicstore.service;

import com.emusicstore.model.Product;
import org.springframework.stereotype.Service;

import java.util.List;

//@Service
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

}
