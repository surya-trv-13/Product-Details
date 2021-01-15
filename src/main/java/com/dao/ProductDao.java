package com.dao;

import java.math.BigInteger;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.hibernate.type.IntegerType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.entities.ProductDetail;

public class ProductDao extends AbstractDao{
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveProduct(ProductDetail product) {
		Integer result = (Integer)this.hibernateTemplate.save(product);
		return result;
	}
	
	public List<ProductDetail> showProduct(){
		List<ProductDetail> products = this.hibernateTemplate.loadAll(ProductDetail.class);
		return products;
		
	}
	
	// Code for changes using HQL
	@Transactional
	public int countRows() {
		Query query = getSession()
					.createSQLQuery("SELECT COUNT(*) FROM product_detail")
					.addScalar("count(*)", IntegerType.INSTANCE);
		return (Integer) query.uniqueResult();
	}
}
