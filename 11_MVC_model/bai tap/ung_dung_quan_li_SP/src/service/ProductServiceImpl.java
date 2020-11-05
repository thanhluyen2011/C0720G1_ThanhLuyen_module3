package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer,Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put(1,new Product("XeMay","1000","xecui","honda"));
        productMap.put(2,new Product("XeDap","1000","xecui","honda"));
        productMap.put(3,new Product("XeDapDien","1000","xecui","honda"));
        productMap.put(4,new Product("OTo","1000","xecui","honda"));
        productMap.put(5,new Product("MayBay","10000","xecui","honda"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void add(Product product) {
        productMap.put(product.getId(),product);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id,product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }
}
