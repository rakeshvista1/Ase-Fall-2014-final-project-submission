package com.AsePhase2.Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.sql.Date;

import com.AsePhase2.View.FoodPosts;
import com.AsePhase2.View.User;

public class ValidateUser {

	String userEmail;
	String passWord;
	String table_ExtractedUserName;
	long userPhonenNumber;
	String userType;
	String userAddress;
	String userCity;
	String userZipCode;

	String foodName;
	String foodType;
	String foodQuantity;
	String servingNumber;
	Date expiryDate;
	String describeFood;
	String foodAddress;

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean userEmailExist;

	public ValidateUser(String userEmail, String passWord, Connection conn) {
		// TODO Auto-generated constructor stub
		this.userEmail = userEmail;
		this.passWord = passWord;
		this.conn = conn;
	}

	public boolean checkuserEmail() {

		try {
			String sql = "select userEmail, userName, userPhonenNumber, userpassWord, userType, userCity, userAddress, userZipCode from userDetails "
					+ "where userEmail = ? and userpassWord = ?";

			pstmt = conn.prepareStatement(sql);

			System.out.println("email is : "+userEmail);
			System.out.println("password is : "+passWord);
			
			pstmt.setString(1, userEmail);
			pstmt.setString(2, passWord);

			rs = pstmt.executeQuery();

			userEmailExist = rs.first();

			if (userEmailExist) {

				// while(rs.next()){
				table_ExtractedUserName = rs.getString("userName");
				userType = rs.getString("userType");
				userCity = rs.getString("userCity");
				userAddress = rs.getString("userAddress");
				userZipCode = rs.getString("userZipCode");
				// }
				// System.out.println("table_ExtractedUserName  is : "+
				// table_ExtractedUserName);
			} else {
				userEmailExist = false;
			}
		} catch (Exception e) {
			System.out.println("error is in validate user : " + e.getMessage());
		} finally {
			// userEmailExist = true;
			return userEmailExist;
		}
		// return userEmailExist;
	}

	public User getUserDetails() {
		User user = new User();
		user.setUserEmail(userEmail);
		user.setUserName(table_ExtractedUserName);
		user.setuserPhonenNumber(userPhonenNumber);
		user.setUserType(userType);
		user.setUserCity(userCity);
		user.setUserAddress(userAddress);
		user.setUserZipCode(userZipCode);
		return user;
	}

	public FoodPosts getFoodPosts() {
		FoodPosts foodPosts = new FoodPosts();

		try {
			String sql = "SELECT foodName, foodType, foodQuantity, servingNumber, expiryDate, "
					+ "describeFood, foodAddress FROM foodDonationDetails "
					+ "WHERE expiryDate >= ? ORDER BY expiryDate DESC";

			pstmt = conn.prepareStatement(sql);

			java.util.Date date = new java.util.Date();

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

			String dateToBeFormatted = formatter.format(date);

			java.util.Date currentDate = formatter.parse(dateToBeFormatted);

			pstmt.setDate(1, new java.sql.Date(currentDate.getTime()));

			rs = pstmt.executeQuery();
			System.out.println("before food items");
			while (rs.next()) {
				foodName = rs.getString("foodName");
				foodType = rs.getString("foodType");
				foodQuantity = rs.getString("foodQuantity");
				servingNumber = rs.getString("servingNumber");
				expiryDate = rs.getDate("expiryDate");
				describeFood = rs.getString("describeFood");
				foodAddress = rs.getString("foodAddress");

				foodPosts.setFoodName(foodName);
				foodPosts.setFoodType(foodType);
				foodPosts.setFoodQuantity(foodQuantity);
				foodPosts.setServingNumber(servingNumber);
				foodPosts.setExpiryDate(expiryDate);
				foodPosts.setDescribeFood(describeFood);
				foodPosts.setFoodAddress(foodAddress);

			}

		} catch (Exception e) {
			System.out.println("error is in validate user : " + e.getMessage());
		} finally {
			return foodPosts;
		}
	}
}
