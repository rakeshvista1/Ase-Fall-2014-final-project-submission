package com.AsePhase2.Model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.AsePhase2.Controller.ValidateUser;
import com.AsePhase2.View.FoodPosts;
import com.AsePhase2.View.User;

public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static final String JDBC_Driver = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/users";
	static String DBUsername = "root";
	static String DBPassword = "root";
	Connection conn = null;

	boolean userEmailExist;
	ValidateUser validateUser;
	User user;
	FoodPosts foodPosts;
	
	public LoginValidate() {
		super();
		System.out.println("in the java super class");
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();

		try {

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(DB_URL, DBUsername, DBPassword);
			
		} catch (Exception e) {

			e.printStackTrace();

			System.out
					.println("error is in login validate : " + e.getMessage());
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String userEmail = request.getParameter("userEmail");
		String passWord = request.getParameter("passWord");

		validateUser = new ValidateUser(userEmail, passWord, conn);

		System.out.println("email received is :"+userEmail);
		System.out.println("pass received is :"+passWord);
		userEmailExist = validateUser.checkuserEmail();

		HttpSession session = request.getSession();

		if (userEmailExist) {

			System.out.println("valid email");

			user = validateUser.getUserDetails();
			
			foodPosts = validateUser.getFoodPosts();

			session.setAttribute("user", user);
			session.setAttribute("foodPosts", foodPosts);
			
			session.setAttribute("successMessage", "Posted Successfully");
			
			if (user.getUserType().equals("Provider")) {
				System.out.println("username is provider : " + user.getUserName());
				response.sendRedirect("SuccessfulLoginProvider.jsp");
			} else {
				response.sendRedirect("SuccessfulLoginDistributor.jsp");
			}

		} else {

			System.out.println("Invalid email");

			session.setAttribute("errorMessage", "Invalid Login Details");

			response.sendRedirect("SignInAfterSignUp.jsp");
		}
	}
}