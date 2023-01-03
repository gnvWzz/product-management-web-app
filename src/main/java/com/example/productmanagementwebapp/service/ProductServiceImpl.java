package com.example.productmanagementwebapp.service;

import com.example.productmanagementwebapp.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    public static final Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Sach",5000,"tu dien","NXB TP.HCM"));
        products.put(2, new Product(2, "Vo",3000,"100 trang","But Cau"));
        products.put(3, new Product(3, "But chi",1000,"2B","Thien Long"));
        products.put(4, new Product(4, "But bi",1500,"muc xanh","Thien Long"));
        products.put(5, new Product(5, "Hop but sap mau",10000,"cac mau co ban","Thien Long"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> tempList = new ArrayList<>();
        for (Integer key:
                products.keySet()) {
            if (products.get(key).getName().equals(name)) {
                tempList.add(products.get(key));
            }
        }
        return tempList;
    }
}
