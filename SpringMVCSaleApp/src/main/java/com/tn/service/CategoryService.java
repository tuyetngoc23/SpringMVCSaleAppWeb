/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.service;

import com.tn.pojo.Category;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CategoryService {
    List<Category> getCategory();
    Category getCateById(int id);
}
