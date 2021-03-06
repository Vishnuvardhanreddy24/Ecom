package com.spring.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.spring.model.Category;
import com.spring.model.Supplier;



@Repository
public interface SupplierDAO {

	

	public List<Supplier> list();

	public boolean saveSupplier(Supplier supplier);
	
	
	public Supplier getSupplierById(int supplier_id);
	
	public Supplier removeSupplierById(int supplier_id);
}
