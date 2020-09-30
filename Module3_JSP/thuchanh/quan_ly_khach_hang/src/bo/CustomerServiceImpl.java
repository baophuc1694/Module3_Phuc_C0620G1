package bo;

import bo.CustomerService;
import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers = new HashMap<>();

    static {

        customers.put(1, new Customer(1, "Phuc", "Phuc@codegym", "DN"));
        customers.put(2, new Customer(2, "Quoc", "Quoc@codegym", "QN"));
        customers.put(3, new Customer(3, "Ngan", "Ngan@codegym", "DN"));
        customers.put(4, new Customer(4, "Khanh", "Khanh@codegym", "QT"));
        customers.put(5, new Customer(5, "Dat", "Dat@codegym", "DN"));
        customers.put(6, new Customer(6, "Chau", "Chau@codegym", "QN"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }


}
