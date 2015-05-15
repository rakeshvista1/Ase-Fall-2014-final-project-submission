package com.AsePhase2.View;

import java.sql.Date;
import java.util.ArrayList;

public class FoodPosts {

	private ArrayList<String> foodName = new ArrayList();
	private ArrayList<String> foodType = new ArrayList();
	private ArrayList<String> foodQuantity = new ArrayList();
	private ArrayList<String> servingNumber = new ArrayList();
	private ArrayList expiryDate = new ArrayList();
	private ArrayList<String> describeFood = new ArrayList();
	private ArrayList<String> foodAddress = new ArrayList();

	public ArrayList<String> getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodNamePass) {
		foodName.add(foodNamePass);
	}

	public ArrayList<String> getFoodType() {
		return foodType;
	}

	public void setFoodType(String foodTypePass) {
		foodType.add(foodTypePass);
	}

	public ArrayList<String> getFoodQuantity() {
		return foodQuantity;
	}

	public void setFoodQuantity(String foodQuantityPass) {
		foodQuantity.add(foodQuantityPass);
	}

	public ArrayList<String> getServingNumber() {
		return servingNumber;
	}

	public void setServingNumber(String servingNumberPass) {
		servingNumber.add(servingNumberPass);
	}

	public ArrayList getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDatePass) {
		expiryDate.add(expiryDatePass);
	}

	public ArrayList<String> getDescribeFood() {
		
		return describeFood;
	}

	public void setDescribeFood(String describeFoodPass) {
		describeFood.add(describeFoodPass);
	}

	public ArrayList<String> getFoodAddress() {
		return foodAddress;
	}

	public void setFoodAddress(String foodAddressPass) {
		foodAddress.add(foodAddressPass);
	}
}
