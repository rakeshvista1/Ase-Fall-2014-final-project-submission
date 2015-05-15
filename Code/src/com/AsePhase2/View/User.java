package com.AsePhase2.View;

public class User {

	private String userEmail;
	private String userName;
	private long userPhonenNumber;
	private String userType;
	private String userAddress;
	private String userCity;
	private String userZipCode;

	public long getuserPhonenNumber() {
		return userPhonenNumber;
	}

	public void setuserPhonenNumber(long userPhonenNumber) {
		this.userPhonenNumber = userPhonenNumber;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserCity() {
		return userCity;
	}

	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}

	public String getUserZipCode() {
		return userZipCode;
	}

	public void setUserZipCode(String userZipCode) {
		this.userZipCode = userZipCode;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
