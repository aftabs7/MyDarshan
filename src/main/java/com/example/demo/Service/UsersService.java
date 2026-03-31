package com.example.demo.Service;

import java.util.List;

import com.example.demo.Model.Users;

public interface UsersService {

	void register(Users u1);
	
	List<Users> getAllInfo();
	
	void delUser(int id);

	Users getSingleInfo(int id);

	Users findbyemailandpass(String email,String password);
}