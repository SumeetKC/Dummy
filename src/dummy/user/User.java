package dummy.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


import org.springframework.stereotype.Component;

@Component
@Entity
public class User {

	@Column
	@Id
	private String id;
	private String name, fname, mname, email, address, phone, aadhar;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAadhar() {
		return aadhar;
	}

	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	public User() {
		super();
	}

	public User(String id, String name, String fname, String mname, String email, String address, String phone, String aadhar) {
		super();
		this.id=id;
		this.name = name;
		this.fname = fname;
		this.mname = mname;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.aadhar = aadhar;
	}

}
