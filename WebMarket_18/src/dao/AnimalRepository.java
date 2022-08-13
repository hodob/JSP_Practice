package dao;

import java.util.ArrayList;

import dto.Animal;
import dto.Product;

public class AnimalRepository {
	
	private ArrayList<Animal> listOfProducts2 = new ArrayList<Animal>();
	private static AnimalRepository instance = new AnimalRepository();  //객체를 하나만 사용하기 위해서 instance 를 사용


	
	
	public static AnimalRepository getInstance(){
		return instance;
	} 

	public AnimalRepository() { 
		Animal p1 = new Animal("P1234", "iPhone 6s", 800000);
		p1.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		p1.setCategory("Smart Phone");
		p1.setManufacturer("Apple");
		p1.setUnitsInStock(1000);
		p1.setCondition("New");
		p1.setFilename("P1234.png");

		Animal p2 = new Animal("P1235", "LG PC gram", 1500000);
		p2.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		p2.setCategory("Notebook");
		p2.setManufacturer("LG");
		p2.setUnitsInStock(1000);
		p2.setCondition("Refurbished");
		p2.setFilename("P1235.png");

		Animal p3 = new Animal("P1236", "Galaxy Tab S", 900000);
		p3.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		p3.setCategory("Tablet");
		p3.setManufacturer("Samsung");
		p3.setUnitsInStock(1000);
		p3.setCondition("Old");
		p3.setFilename("P1236.png");
		
		Animal p4 = new Animal("P0001", "Galaxy Tab S", 900000);
		p4.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		p4.setCategory("Tablet");
		p4.setManufacturer("Samsung");
		p4.setUnitsInStock(1000);
		p4.setCondition("Old");
		p4.setFilename("P1236.png");
		
		listOfProducts2.add(p1);
		listOfProducts2.add(p2);
		listOfProducts2.add(p3);
		listOfProducts2.add(p4);
	}

	public ArrayList<Animal> getAllProductsAnimal() {
		return listOfProducts2;
	}
	
	/* public Animal getAnimalById(String animalId) { */

	
	
 public Animal getProductAnimalById(String animalId) { 
	 System.out.println(animalId);
		Animal pById = null;

		for (int i = 0; i < listOfProducts2.size(); i++) {
			Animal p = listOfProducts2.get(i);
			if (p != null && p.getProductId() != null && p.getProductId().equals(animalId)) {
				pById = p;
				break;
			}
		}
		return pById;
	}
	
	public void addProduct(Animal animal) {
		listOfProducts2.add(animal);
	}
}
