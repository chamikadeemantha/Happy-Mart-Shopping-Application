package product;

public class product
 {
	
	private int id;
	private String name;
	private String description;
	private String price;
	private String catagory;
	private String quantity;
	
	public product(int id, String name, String price, String quantity, String description, String catagory)
	{
		
		this.id = id;
		this.name = name;
		this.price = price;
		this.catagory = catagory;
		this.description =description;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getDescription() {
		return description;
	}

	
	public String getPrice() {
		return price;
	}


	public String getCatagory() {
		return catagory;
	}

	
	public String getQuantity() {
		return quantity;
	}

	
}