package com.example.demo.Service;

import java.util.List;

import com.example.demo.Model.Destinations;

public interface DestinationsService {

	void register(Destinations d1);
	
	List<Destinations> getAllInfo();

	void delDestination(int id);
	
	Destinations getSingleInfo(int id);

}