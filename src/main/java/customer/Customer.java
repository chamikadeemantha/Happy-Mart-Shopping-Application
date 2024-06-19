package customer;

public class Customer extends User{
  
    private String userName;
    private String password;
    
    public Customer( String id, String name, String email, String  phone, String address, String userName,
			String password) {
    	
		super(id,name,email,phone,address);
		
		this.userName = userName;
		this.password = password;
	}


	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}

    
}
