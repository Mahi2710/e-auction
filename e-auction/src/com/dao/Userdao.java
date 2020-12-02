package com.dao;
import java.sql.*;

import com.entites.User;

public class Userdao {
	private Connection con;

	public Userdao(Connection con) {
		super();
		this.con = con;
	}
	// to insert data in databas
	  
	

	//get user by useremail and userpassword:
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from user where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set=pstmt.executeQuery();
            
            if(set.next())
            {
             user=new User();
             
             
//             data from db
             String name=set.getString("name");
//             set to user object
             user.setName(name);
             
             user.setId(set.getInt("id"));
             user.setEmail(set.getString("email"));
             user.setPassward(set.getString("password"));
             user.setGender(set.getString("gender"));
             user.setProfile(set.getString("profile"));
             
             
             
             
                
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
