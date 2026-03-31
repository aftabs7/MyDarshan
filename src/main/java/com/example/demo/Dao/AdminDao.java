package com.example.demo.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Admin;
import com.example.demo.Repository.AdminRepo;
import com.example.demo.Service.AdminService;

@Service
public class AdminDao implements AdminService {

	@Autowired
	AdminRepo ar;
	
	@Override
	public void register(Admin a1) {
		ar.save(a1);
	}
	
//	@Override
//	public List<Users> getAllInfo() {
//		List <Users> us = ur.findAll();
//		return us;
//	}
//
//	@Override
//	public void delAdmin(int id) {
//		ur.deleteById(id);
//		
//	}
//
//	@Override
//	public Users getSingleInfo(int id) {
//		
//		return ur.getById(id);
//	}

	@Override
	public Admin findbyemailandpass(String email, String password) {
		
		return ar.findByEmailAndPassword(email, password);
	}

}