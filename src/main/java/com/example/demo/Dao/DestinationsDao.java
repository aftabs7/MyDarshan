package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Destinations;
import com.example.demo.Repository.DestinationsRepo;
import com.example.demo.Service.DestinationsService;

@Service
public class DestinationsDao implements DestinationsService {

	@Autowired
	DestinationsRepo dr;
	
	@Override
	public void register(Destinations d1) {
		dr.save(d1);
	}

	@Override
	public List<Destinations> getAllInfo() {
		List <Destinations> dd = dr.findAll();
		return dd;
	}

	@Override
	public void delDestination(int id) {
		
		dr.deleteById(id);
		
	}

	@Override
	public Destinations getSingleInfo(int id) {

		return dr.getById(id);
		
	}
}