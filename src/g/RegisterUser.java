package g;
import java.sql.*;

import g.GetCon;
public class RegisterUser {
static int status1=0;
//int accountno=1;
public static int register(String username ,String password,String repassword,String amount,String adderess,String phone){
	//public static int register(String email,String password,String gender,String country,String name){

	Connection con=GetCon.getCon();
	PreparedStatement ps;
	try {
		ps = con.prepareStatement("Insert into newaccount.raft values(?,?,?,?,?,?,?)");
	//	int	nextvalue1=GetCon.getPrimaryKey();
		long random=(long)(Math.random()*((1000-10)+1))+10;
		String st="";
		for(int i=0;i<4;i++) {
			st=st+phone.charAt(i);
		}
		long acc=Long.parseLong(st)+random;
		ps.setLong(1,acc);
		ps.setString(2,username);
		ps.setString(3,password);
		ps.setString(4,repassword);
		ps.setString(5,amount);
		ps.setString(6,adderess);
		ps.setString(7,phone);
		
		status1=ps.executeUpdate();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status1;
	
}
}
