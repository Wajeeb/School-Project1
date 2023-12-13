package p1;

import java.sql.*;

import oracle.jdbc.driver.OracleDriver;

public class Admission {
	
	String Classes;
	String Aadhaar;
	String Student;
	String Gender;
	String Dob;
	String Mobile;
	String Father;
	String Mother;
	String Address;
	String State;
	String District;
	String Pin;
	String Password;
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getClasses() {
		return Classes;
	}
	public void setClasses(String classes) {
		Classes = classes;
	}
	public String getAadhaar() {
		return Aadhaar;
	}
	public void setAadhaar(String aadhaar) {
		Aadhaar = aadhaar;
	}
	public String getStudent() {
		return Student;
	}
	public void setStudent(String student) {
		Student = student;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getDob() {
		return Dob;
	}
	public void setDob(String dob) {
		Dob = dob;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getFather() {
		return Father;
	}
	public void setFather(String father) {
		Father = father;
	}
	public String getMother() {
		return Mother;
	}
	public void setMother(String mother) {
		Mother = mother;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getDistrict() {
		return District;
	}
	public void setDistrict(String district) {
		District = district;
	}
	public String getPin() {
		return Pin;
	}
	public void setPin(String pin) {
		Pin = pin;
	}
	
	static Connection con=null;
	static Statement stmt=null;
	static ResultSet res=null;
	static PreparedStatement pstmt=null;
	
	public Connection Connect()
	{
		try
		{
			DriverManager.registerDriver(new OracleDriver());
			con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","system","system");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
	//insert data
	
	public ResultSet insertData()
	{
		try
		{
			con=Connect();
			pstmt=con.prepareStatement("INSERT INTO ADMISSION VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, Classes);
			pstmt.setString(2, Aadhaar);
			pstmt.setString(3, Student);
			pstmt.setString(4, Gender);
			pstmt.setString(5, Dob);
			pstmt.setString(6, Mobile);
			pstmt.setString(7, Father);
			pstmt.setString(8, Mother);
			pstmt.setString(9, Address);
			pstmt.setString(10, State);
			pstmt.setString(11, District);
			pstmt.setString(12, Pin);
			pstmt.setString(13, Password);
			
			res=pstmt.executeQuery();
		}catch(Exception ee)
		{
			ee.printStackTrace();
			System.out.println("Insert Failed");
		}
		return res;
			
				
	}
	
}
