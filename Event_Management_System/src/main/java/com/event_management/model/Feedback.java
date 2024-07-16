package com.event_management.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity

public class Feedback {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String name;
    private String email;
    private String message;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Feedback(Long id, String name, String email, String message) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.message = message;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Feedback [id=" + id + ", name=" + name + ", email=" + email + ", message=" + message + "]";
	}
    
   
}
