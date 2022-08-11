package dao;

import java.util.ArrayList;

import dto.Animal;

public class AnimalRepository {
	
	private ArrayList<Animal> listOfProducts = new ArrayList<Animal>();
	private static AnimalRepository instance = new AnimalRepository();  //객체를 하나만 사용하기 위해서 instance 를 사용

	public static AnimalRepository getInstance(){
		return instance;
	} 

	public AnimalRepository() { 
		Animal p1 = new Animal();
		p1.setId("1");
		p1.setName("동물1");
		p1.setLocation("111.aaa@com");
		
		Animal p2 = new Animal();
		p2.setId("1");
		p2.setName("동물2");
		p2.setLocation("222.aaa@com");
		
		Animal p3 = new Animal();
		p3.setId("1");
		p3.setName("동물3");
		p3.setLocation("333.aaa@com");
		
		listOfProducts.add(p1);
		listOfProducts.add(p2);
		listOfProducts.add(p3);
	}

	public ArrayList<Animal> getAllProducts() {
		return listOfProducts;
	}
	
	public Animal getProductById(String animalId) {
		Animal pById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Animal p = listOfProducts.get(i);
			if (p != null && p.getId() != null && p.getId().equals(animalId)) {
				pById = p;
				break;
			}
		}
		return pById;
	}
	
	public void addProduct(Animal animal) {
		listOfProducts.add(animal);
	}
}
