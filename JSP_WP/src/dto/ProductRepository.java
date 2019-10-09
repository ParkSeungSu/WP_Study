package dto;

import java.util.ArrayList;

public class ProductRepository {
	private ArrayList<Product> listOfProduct = new ArrayList<Product>();

	public ProductRepository() {
		Product phone = new Product("P1234", "I Phone 6s", 800000);
		phone.setDescription("4.7-inch, 1334x750 Retina FHD Display, 8-megapixel inSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacture("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setImgUrl("https://i5.walmartimages.com/asr/a8e48a38-3402-4ef7-848b-a0c6e8f8e927_1.6111030de41a4372b734941fd827933a.jpeg?odnWidth=450&odnHeight=450&odnBg=ffffff");
		
		Product notebook=new Product("P1235", "LG PC Gram", 1500000);
		notebook.setDescription("13.3-inch, IPS LED Display, 5rd Generation Intel Core Processor");
		notebook.setCategory("NoteBook");
		notebook.setManufacture("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setImgUrl("http://static.techspot.com/images/products/2018/laptops/org/2873904_adea580ea2b4a789cac9cc85137df85a_500x347.jpg");
		Product tablet=new Product("P1236","Galaxy Tab S",900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED Display, Octa-Core Processor");
		tablet.setCategory("Tablet");
		tablet.setManufacture("SAMSUNG");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("01d");
		tablet.setImgUrl("https://d2pa5gi5n2e1an.cloudfront.net/global/images/product/tablets/Samsung_Galaxy_Tab_S_10_5/Samsung_Galaxy_Tab_S_10_5_L_1.jpg");
		listOfProduct.add(tablet);
		listOfProduct.add(notebook);
		listOfProduct.add(phone);
	}
	public ArrayList<Product> getAllProduct(){
		return listOfProduct;
	}
}
