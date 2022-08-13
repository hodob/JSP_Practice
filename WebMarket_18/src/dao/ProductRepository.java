package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();  //객체를 하나만 사용하기 위해서 instance 를 사용

	public static ProductRepository getInstance(){
		return instance;
	} 

	public ProductRepository() { //더미 데이터 3개 , 폰, 태블릿 , 노트북
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC gram", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		Product test1 = new Product("P0001", "aa", 12);
		test1.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		test1.setCategory("Tablet");
		test1.setManufacturer("Samsung");
		test1.setUnitsInStock(1000);
		test1.setCondition("Old");
		test1.setFilename("test.png");
		
		Product test2 = new Product("P0002", "vcxz", 12);
		test2.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		test2.setCategory("Tablet");
		test2.setManufacturer("Samsung");
		test2.setUnitsInStock(1000);
		test2.setCondition("Old");
		test2.setFilename("test.png");
		
		Product P123445 = new Product("P123445", "LG PC gram", 1500000);
		P123445.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		P123445.setCategory("Notebook");
		P123445.setManufacturer("LG");
		P123445.setUnitsInStock(1000);
		P123445.setCondition("Refurbished");
		P123445.setFilename("sample1.png");
		
		
				
		listOfProducts.add(test1);
		listOfProducts.add(test2);
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		listOfProducts.add(P123445);
		
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals("P0008")) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
