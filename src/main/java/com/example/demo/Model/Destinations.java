package com.example.demo.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Destinations {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int destination_id;
	private String destination_name;
	private String destination_title;
	private String destination_location;
	private String destination_description;
	@Column(length = 900)
	private String destination_information;
	private int destination_cost;
	private int destination_duration;
	private String destinationphoto;
	
	public int getDestination_id() {
		return destination_id;
	}
	public void setDestination_id(int destination_id) {
		this.destination_id = destination_id;
	}
	public String getDestination_name() {
		return destination_name;
	}
	public void setDestination_name(String destination_name) {
		this.destination_name = destination_name;
	}
	public String getDestination_title() {
		return destination_title;
	}
	public void setDestination_title(String destination_title) {
		this.destination_title = destination_title;
	}
	public String getDestination_location() {
		return destination_location;
	}
	public void setDestination_location(String destination_location) {
		this.destination_location = destination_location;
	}
	public String getDestination_description() {
		return destination_description;
	}
	public void setDestination_description(String destination_description) {
		this.destination_description = destination_description;
	}
	public String getDestination_information() {
		return destination_information;
	}
	public void setDestination_information(String destination_information) {
		this.destination_information = destination_information;
	}
	public int getDestination_cost() {
		return destination_cost;
	}
	public void setDestination_cost(int destination_cost) {
		this.destination_cost = destination_cost;
	}
	public int getDestination_duration() {
		return destination_duration;
	}
	public void setDestination_duration(int destination_duration) {
		this.destination_duration = destination_duration;
	}
	public String getDestinationphoto() {
		return destinationphoto;
	}
	public void setDestinationphoto(String destinationphoto) {
		this.destinationphoto = destinationphoto;
	}


}