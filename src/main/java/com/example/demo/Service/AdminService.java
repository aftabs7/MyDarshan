package com.example.demo.Service;

import com.example.demo.Model.Admin;

public interface AdminService {

	void register(Admin a1);
	
//	List<Users> getAllInfo();
	
//	void delAdmin(int id);

//	Users getSingleInfo(int id);
	
	Admin findbyemailandpass(String email,String password);
}