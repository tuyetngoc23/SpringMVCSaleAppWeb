/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.repository;

import com.tn.pojo.Product;
import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface ProductRepository {
    public List<Product> getProducts(String kw);
    public List<Product> getProducts(BigDecimal fromPrice, BigDecimal toPrice);
    public boolean deleteProduct(int productId);
}
