package com.AsePhase2.Model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AsePhase2.Controller.InsertFoodDonationRecord;
import com.sun.jndi.cosnaming.IiopUrl.Address;

public class FoodDonation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection conn = null;
	String DBUsername = "root";
	String DBPassword = "root";
	String DB_URL = "jdbc:mysql://localhost/users";

	String foodName;
	String foodType;
	String foodQuantity;
	String servingNumber;
	java.sql.Date expiryDate;
	String describeFood;
	String foodAddress;
	
	int numberOfRowsImpacted;

	public void init() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DBUsername, DBPassword);
		} catch (Exception e) {
			System.out.println("error is : " + e.getMessage());
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		foodName = request.getParameter("foodName");
		foodType = request.getParameter("foodType");
		foodQuantity = request.getParameter("foodQuantity");
		servingNumber = request.getParameter("servingNumber");

		// Date formatting

		try {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date parsed = format.parse(request.getParameter("expiryDate"));
			expiryDate = new java.sql.Date(parsed.getTime());
			System.out.println("date is : "+ parsed.getDate());
			System.out.println("sqldate is : "+expiryDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		describeFood = request.getParameter("describeFood");
		foodAddress = request.getParameter("foodAddress");
		
		InsertFoodDonationRecord foodDonationRecord = new InsertFoodDonationRecord(foodName, foodType, foodQuantity, servingNumber, expiryDate, describeFood, foodAddress, conn);
		
		numberOfRowsImpacted = foodDonationRecord.insertIntoTable();
		
		System.out.println("number of rows in food nsert is :  "+numberOfRowsImpacted);
		
		if(numberOfRowsImpacted==1){
			response.sendRedirect("ProviderDonate.jsp");
		}
	}
}