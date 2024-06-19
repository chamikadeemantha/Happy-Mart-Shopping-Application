package customer;

public class UserFactory {
    public static User createUser(String userType, String id, String name, String email, String phone, String address, String userName, String password) {
        if ("User".equalsIgnoreCase(userType)) {
            return new User(id, name, email, phone, address);
        } else if ("Customer".equalsIgnoreCase(userType)) {
            return new Customer(id, name, email, phone, address, userName, password);
        }
        return null; 
    }
}
