package com.AsePhase2.Model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.AsePhase2.Controller.InsertNewUser;

public class NewUserValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String userEmail;
	String userName;
	String userPassWord;
	long userPhonenNumber;
	String userType;
	String userAddress;
	String userCity;
	String userZipCode;
	int numberOfRowsImpacted;

	Connection conn = null;
	String DBUsername = "root";
	String DBPassword = "root";
	String DB_URL = "jdbc:mysql://localhost/users";

	public NewUserValidate() {
		super();
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DBUsername, DBPassword);
		} catch (Exception e) {
			System.out.println("in conn exception");
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		userEmail = request.getParameter("userInputEmail");
		userName = request.getParameter("userInputName");
		userPassWord = request.getParameter("userInputPassWord");
		userPhonenNumber = Long.parseLong(request
				.getParameter("userInputPhoneNumber"));
		userType = request.getParameter("userType");
		userAddress = request.getParameter("userAddress");
		userCity = request.getParameter("userCity");
		userZipCode = request.getParameter("userZipCode");
				

		System.out.println(userEmail + "  " + userName + "  " + userPhonenNumber
				+ " " + userPassWord+" "+userType+" "+userAddress+"  "+userCity
				+" "+userZipCode);

		/*
		 * if new user is created successfully send the SignInAfterSignUp.jsp
		 * page as the response to the user
		 */

		InsertNewUser insertNewUser = new InsertNewUser(userEmail, userName,
				userPhonenNumber, userPassWord, userType, userAddress, userCity,userZipCode, conn);

		numberOfRowsImpacted = insertNewUser.insertIntoTable();

		if (numberOfRowsImpacted == 1) {
			HttpSession session = request.getSession();

			session.setAttribute("errorMessage", " ");
			response.sendRedirect("SignInAfterSignUp.jsp");
		} else {

			response.sendRedirect("SignUp.html");
		}
		;
	}
}