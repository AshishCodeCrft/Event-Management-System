package com.event_management.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String eventDate;
    private String location;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Event(Long id, String name, String eventDate, String location) {
		super();
		this.id = id;
		this.name = name;
		this.eventDate = eventDate;
		this.location = location;
	}
	public Event() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Event [id=" + id + ", name=" + name + ", eventDate=" + eventDate + ", location=" + location + "]";
	}
	

}
