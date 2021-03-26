/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tn.repository.iml;

import com.tn.pojo.Category;
import com.tn.repository.CategoryRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
/**
 *
 * @author Admin
 */
@Repository
public class CategoryRepositoryImpl implements CategoryRepository{

    @Override
    public List<Category> getCategory() {
        List<Category> cates = new ArrayList<>();
        Category c1 = new Category();
        c1.setId(1);
        c1.setName("Mobile");
        Category c2 = new Category();
        c2.setId(2);
        c2.setName("Tablet");
        cates.add(c2);
        cates.add(c1);
        return cates;
    }
    
}
