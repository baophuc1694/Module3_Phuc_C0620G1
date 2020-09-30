package bo;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private  static Map<Integer, Product> productMap=new HashMap<>();
    static {
        productMap.put(1, new Product(1, "iPhone",300, "Hàng Quốc Tế", "Apple" ));
        productMap.put(2, new Product(2, "SamSung GL 7",200, "Hàng Quốc Tế", "SanSung" ));
        productMap.put(3, new Product(3, "Oppo 6",150, "Hàng Quốc Tế", "Oppo" ));

    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
      return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);

    }

    @Override
    public List<Product> searchByName(String search) {
        List<Product> productList = new ArrayList<>();
        List<Product>  productList2= new ArrayList<>(productMap.values());
        for (Product product: productList2 ){
            if(product.getName().contains(search)){
                productList.add(product);
            }
        }
        return productList;
    }
}
