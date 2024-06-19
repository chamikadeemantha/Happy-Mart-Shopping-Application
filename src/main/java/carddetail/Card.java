package carddetail;

import java.time.LocalDate;

public class Card {

	int id;
	int cardnumber;
	int cvv;
	LocalDate expdate;
	String cardtype;
      
	public Card(int id, int cardnumber, int cvv, LocalDate expdate, String cardtype) {
		super();
		this.id = id;
		this.cardnumber = cardnumber;
		this.cvv = cvv;
		this.expdate = expdate;
		this.cardtype = cardtype;
	}
	
	
	public int getId() {
		return id;
	}


	public int getCardnumber() {
		return cardnumber;
	}

	public int getCvv() {
		return cvv;
	}


	public LocalDate getExpdate() {
		return expdate;
	}


	public String getCardtype() {
		return cardtype;
	}

}
