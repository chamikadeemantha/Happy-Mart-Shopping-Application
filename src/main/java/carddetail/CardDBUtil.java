package carddetail;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import customer.DBConnect;
import java.time.LocalDate;

public class CardDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Card> getCardDetails(int cardId) {

		ArrayList<Card> card = new ArrayList<>();

		try {

			// create database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from carddetail where id='" + cardId + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				int cardnumber = rs.getInt(2);
				int cvv = rs.getInt(3);
				LocalDate expdate = rs.getObject(4, LocalDate.class);
				String cardtype = rs.getString(5);

				Card cardn = new Card(id, cardnumber, cvv, expdate, cardtype);
				card.add(cardn);
			}

		} catch (Exception e) {
			System.out.println("Test ex : " + e.getMessage());
			e.printStackTrace();
		}
		return card;
	}

	public static List<Card> getCardDetailByCardNumber(int cardNumber) {

		ArrayList<Card> card = new ArrayList<>();

		try {

			// create database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from carddetail where cardnumber='" + cardNumber + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				int cardnumber = rs.getInt(2);
				int cvv = rs.getInt(3);
				LocalDate expdate = rs.getObject(4, LocalDate.class);
				String cardtype = rs.getString(5);

				Card cardn = new Card(id, cardnumber, cvv, expdate, cardtype);
				card.add(cardn);
			}

		} catch (Exception e) {
			System.out.println("Test ex : " + e.getMessage());
			e.printStackTrace();
		}
		return card;
	}

	public static boolean insertcard(int cardnumber, int cvv, LocalDate expdate, String cardtype) {
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into carddetail values(0,'" + cardnumber + "','" + cvv + "','" + expdate + "','"
					+ cardtype + "')";
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
	public static boolean updatecard(int id, int cardnumber, int cvv, String cardtype) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update carddetail set id='" + id + "',cardnumber='" + cardnumber + "',cvv='" + cvv
					+ "',cardtype='" + cardtype + "'" + "where id='" + id + "'";
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
	public static boolean deleteCard(int id) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from carddetail where id='" + id + "'";
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
