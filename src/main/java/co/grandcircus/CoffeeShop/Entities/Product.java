package co.grandcircus.CoffeeShop.Entities;

public class Product {
	private int id;
	private String description;
	private double price;
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
	public Product(int id, String description, double price, String name) {
		super();
		this.id = id;
		this.description = description;
		this.price = price;
		this.name = name;
	}
	public Product() {}
}
