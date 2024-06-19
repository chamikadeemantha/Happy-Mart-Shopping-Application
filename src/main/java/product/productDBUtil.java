package product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class productDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<product> getproductDetails(int pid) {

		ArrayList<product> product = new ArrayList<>();

		try {

			// create database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from product where id='" + pid + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String quantity = rs.getString(4);
				String description = rs.getString(5);
				String category = rs.getString(6);

				product prod = new product(id, name, price, quantity, description,category);
				
				
				product.add(prod);
			}

		} catch (Exception e) {
			System.out.println("Test ex : " + e.getMessage());
			e.printStackTrace();
		}
		return product;
	}

	public static boolean insertproduct(int id,String name, String price,String quantity,String description, String category) 
	{
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into product values('" + id + "','" + name + "','" + price + "','" + quantity + "','"
					+ description + "','"+category+"')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	// update
	public static boolean updateproduct(int id, String name, String price, String quantity, String description, String category) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update product set id='" + id + "',name='" + name + "',price='" + price
					+ "',quantity='" + quantity + "',description='"+description+"',category='"+category+"'" + "where id='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// delete
	public static boolean deleteproduct(int id) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from product where id='" + id + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
}
	
