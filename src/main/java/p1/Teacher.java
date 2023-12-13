package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class Teacher {
	
	String FullName;
	String Age;
	String Mobile;
	String Aadhaar;
	String Mail;
	String Gender;
	String Language;
	String CreatePassword;
	String ConfirmPassword;
	
	public String getAadhaar() {
		return Aadhaar;
	}
	public void setAadhaar(String aadhaar) {
		Aadhaar = aadhaar;
	}
	public String getCreatePassword() {
		return CreatePassword;
	}
	public void setCreatePassword(String createPassword) {
		CreatePassword = createPassword;
	}
	public String getConfirmPassword() {
		return ConfirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		ConfirmPassword = confirmPassword;
	}
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getMail() {
		return Mail;
	}
	public void setMail(String mail) {
		Mail = mail;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String language) {
		Language = language;
	}

	static Connection con=null;
	static Statement stmt=null;
	static ResultSet res=null;
	static PreparedStatement pstmt=null;
	
	/*
	 * public Connection Connect() { try { DriverManager.registerDriver(new
	 * OracleDriver());
	 * con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE",
	 * "system","system"); }catch(Exception e) { e.printStackTrace(); } return con;
	 * }
	 */
	Admission adm=new Admission();
	//insert data
	
	public int insertData()
	{
		int i=0;
		try
		{
			if(CreatePassword.equals(ConfirmPassword))
			{
			con=adm.Connect();
			pstmt=con.prepareStatement("INSERT INTO TEACHER VALUES(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, FullName);
			pstmt.setString(2, Age);
			pstmt.setString(3, Mobile);
			pstmt.setString(4, Aadhaar);
			pstmt.setString(5, Mail);
			pstmt.setString(6, Gender);
			pstmt.setString(7, Language);
			pstmt.setString(8, ConfirmPassword);
			
			i=pstmt.executeUpdate();
			}else {
				return i=0;
			}
		}catch(Exception ee)
		{
			ee.printStackTrace();
			System.out.println("Insert Failed");
		}
		return i;
	}
}

