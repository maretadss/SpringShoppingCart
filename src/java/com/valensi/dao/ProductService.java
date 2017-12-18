/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.dao;

import static com.valensi.dao.UserService.logger;
import com.valensi.model.Product;
import com.valensi.model.User;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Repository
@Transactional
public class ProductService {

    static final Logger logger = Logger.getLogger(ProductService.class.getName());
    private List<Product> prods;
    @PersistenceUnit
    private EntityManagerFactory emf;

    private EntityManager em;

    @Transactional
    public void saveProduct(Product product) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(product);
        em.getTransaction().commit();
        //em.close();
    }

    public Product findbyProductId(Integer productId){
        Product product = new  Product();
        try {
            em = emf.createEntityManager();
            Query query = em.createQuery("Select p from Product p where p.productId = :productId");
            query.setParameter("productId", productId);
            product = (Product) query.getSingleResult();
        } catch (NoResultException nre) {
            logger.severe("Product yang dicari tidak ada");
        }
        return product;
    }
    
    public List<Product> findAll() {
        em = emf.createEntityManager();
        prods = this.em.createNamedQuery("Product.findAll").getResultList();
        return prods;
    }

    public Product findById(Integer productId) {
        return em.find(Product.class, productId);
    }
        
    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }

}
