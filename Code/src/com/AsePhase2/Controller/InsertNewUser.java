package com.AsePhase2.Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class InsertNewUser {

	String userEmail;
	String userName;
	String userPassWord;
	long userPhonenNumber;
	String userType;
	String userAddress;
	String userCity;
	String userZipCode;

	Connection conn;
	PreparedStatement preparedStatement;
	int numberOfRowsImpacted;

	public InsertNewUser(String userEmail, String userName,
			long userPhonenNumber, String userPassWord, String userType,
			String userAddress, String userCity, String userZipCode,
			Connection conn) {
		// TODO Auto-generated constructor stub

		this.userEmail = userEmail;
		this.userName = userName;
		this.userPhonenNumber = userPhonenNumber;
		this.userPassWord = userPassWord;
		this.userType = userType;
		this.userCity = userCity;
		this.userAddress = userAddress;
		this.userZipCode = userZipCode;
		this.conn = conn;
		System.out.println("in insert " + userEmail + "  " + userName + "  "
				+ userPhonenNumber + " " + userPassWord);

	}

	public int insertIntoTable() {

		System.out.println("before execute query");

		String sqlQuery = "Insert into userDetails "
				+ "(userEmail,userName,userPhonenNumber,userpassWord,userType,userCity,userAddress,userZipCode)"
				+ "values (?,?,?,?,?,?,?,?)";

		System.out.println("after execute query");

		try {

			preparedStatement = conn.prepareStatement(sqlQuery);
			
			preparedStatement.setString(1, userEmail);
			preparedStatement.setString(2, userName);
			preparedStatement.setLong(3, userPhonenNumber);
			preparedStatement.setString(4, userPassWord);
			preparedStatement.setString(5, userType);
			preparedStatement.setString(6, userCity);
			preparedStatement.setString(7, userAddress);
			preparedStatement.setString(8, userZipCode);

			numberOfRowsImpacted = preparedStatement.executeUpdate();

			System.out.println("numberOfRowsImapcted is "
					+ numberOfRowsImpacted);

		} catch (Exception e) {
			System.out.println("in execute query exception");
			e.printStackTrace();
		} finally {
			return numberOfRowsImpacted;
		}
	}
}