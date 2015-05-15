package com.AsePhase2.Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;

public class InsertFoodDonationRecord {

	String foodName;
	String foodType;
	String foodQuantity;
	String servingNumber;
	java.sql.Date expiryDate;
	String describeFood;
	String foodAddress;

	Connection conn;
	PreparedStatement pstmt;
	int numberOfRowsImpacted;

	public InsertFoodDonationRecord(String foodName, String foodType,
			String foodQuantity, String servingNumber, java.sql.Date expiryDate,
			String describeFood, String foodAddress, Connection conn) {
		// TODO Auto-generated constructor stub

		this.foodName = foodName;
		this.foodType = foodType;
		this.foodQuantity = foodQuantity;
		this.servingNumber = servingNumber;
		this.expiryDate = expiryDate;
		this.describeFood = describeFood;
		this.foodAddress = foodAddress;
		this.conn = conn;
	}

	public int insertIntoTable() {

		String sqlQuery = "insert into foodDonationDetails"
				+ "(foodName, foodType, foodQuantity, servingNumber,expiryDate,describeFood,foodAddress)"
				+ "values (?,?,?,?,?,?,?)";

		try {
			System.out.println("err1");
			pstmt = conn.prepareStatement(sqlQuery);
			System.out.println("err2");

			pstmt.setString(1, foodName);
			pstmt.setString(2, foodType);
			pstmt.setString(3, foodQuantity);
			pstmt.setString(4, servingNumber);
			pstmt.setDate(5, expiryDate);
			pstmt.setString(6, describeFood);
			pstmt.setString(7, foodAddress);		

			numberOfRowsImpacted = pstmt.executeUpdate();

			System.out.println("numberOfRowsImapcted is "
					+ numberOfRowsImpacted);

			return numberOfRowsImpacted;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error is" + e.getMessage());
		} finally {
			return numberOfRowsImpacted;
		}
	}
}
