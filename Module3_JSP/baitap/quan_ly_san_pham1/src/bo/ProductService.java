package bo;

import model.Product;

import java.util.List;

public interface ProductService {
    public List<Product> findAll();
    void save(Product product);
    Product findById(int id);
    void update(int id,Product product);
    void remove(int id);
    List<Product> searchByName(String search);
}
