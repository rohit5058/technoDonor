package com.psl.Entity;


public class Donor {

/*//	@Id
//	@GeneratedValue(strategy = GenerationType.Auto)
*/
	private int id;
	private String name;
	private String bloodgroup;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	
	@Override
	public String toString() {
		return "Donor [id=" + id + ", name=" + name + ", bloodgroup="
				+ bloodgroup + "]";
	}
	
	public Donor(int id, String name, String bloodgroup) {
		super();
		this.id = id;
		this.name = name;
		this.bloodgroup = bloodgroup;
	}
	public Donor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
