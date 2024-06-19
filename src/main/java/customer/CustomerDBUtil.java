package customer;

import java.sql.Connection;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;


public class CustomerDBUtil {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs=null;
	
	//validate
	public static boolean validate(String username,String password) {
		
		try {
	    	con=DBConnect.getConnection();
	    	stmt=con.createStatement();
	    	String sql="select * from customer where username='"+username+"' and '"+password+"'";
	    	rs=stmt.executeQuery(sql);
	    	
	    	if(rs.next()) {
	    		isSuccess=true;
	    	}else {
	    		isSuccess=false;
	    	}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
    public static List<Customer> getCustomerDetails(String cusid) {
    	
  
    	
    	ArrayList<Customer> customer = new ArrayList<>();

    	try {
  
    		//create database connection
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+cusid+"'";
    		rs = stmt.executeQuery(sql);

    		while(rs.next()) {
    			String id = rs.getString(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String address = rs.getString(5);
    			String username = rs.getString(6);
    			String password = rs.getString(7);
    			

    			Customer cus = new Customer(id,name,email,phone,address,username,password);
    			customer.add(cus);
    		}
    		
    	}
    	catch(Exception e) {
        	System.out.println("Test ex : "+e.getMessage());
    		e.printStackTrace();
    	}	
    	return customer;	
    }
    
    
   public static List<Customer> getCustomerByUsernameAndPassword(String uname, String pwrd) {
    	
    	
    	ArrayList<Customer> customer = new ArrayList<>();

    	try {
    		//create database connection
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
	    	String sql="select * from customer where username='"+uname+"' and '"+pwrd+"'";

    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			String id = rs.getString(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String address = rs.getString(5);
    			String username = rs.getString(6);
    			String password = rs.getString(7);
    			
    			Customer cus = new Customer(id,name,email,phone,address,username,password);
    			customer.add(cus);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return customer;	
    }
    
    
	//insert
	public static boolean insertcustomer(String name, String email, String  phonenum, String address, String username,String password) {
		boolean isSuccess=false;
	    try {
	    	con=DBConnect.getConnection();
	    	stmt=con.createStatement();
	    	String sql="insert into customer values(0,'"+name+"','"+email+"','"+phonenum+"','"+address+"','"+username+"','"+password+"')";
	    	int rs=stmt.executeUpdate(sql);
	    	
	    	if(rs >0) {
	    		isSuccess=true;
	    	}
            else {
    	   isSuccess=false;
           }

	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
	    return isSuccess;
	} 
	//update
    public static boolean updatecustomer(String id, String name, String email, String phone, String address, String username, String password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',address='"+address+"',username='"+username+"',password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	
	
	
    //delete
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from customer where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
} 
    
  //

