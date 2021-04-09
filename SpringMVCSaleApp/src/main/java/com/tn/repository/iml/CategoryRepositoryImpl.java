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
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
/**
 *
 * @author Admin
 */
@Repository
public class CategoryRepositoryImpl implements CategoryRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    @Transactional
    public List<Category> getCategory() {
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Category");
        
        return q.getResultList();
<<<<<<< HEAD
    }

    @Override
    @Transactional
    public Category getCateById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Category.class, id);
=======
>>>>>>> 3aa2a2f58ede0eb2cfb722e7f5ef09229a7bcfb3
    }
    
}
