package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Users;
import com.example.demo.Repository.UsersRepo;
import com.example.demo.Service.UsersService;

@Service
public class UsersDao implements UsersService {

	@Autowired
	UsersRepo ur;
	
	@Override
	public void register(Users u1) {
		ur.save(u1);
	}

	@Override
	public List<Users> getAllInfo() {
		List <Users> us = ur.findAll();
		return us;
	}

	@Override
	public void delUser(int id) {
		ur.deleteById(id);
		
	}

	@Override
	public Users getSingleInfo(int id) {
		
		return ur.getById(id);
	}

	@Override
	public Users findbyemailandpass(String email, String password) {
		
		 return ur.findByEmailAndPassword(email, password);
	}

}