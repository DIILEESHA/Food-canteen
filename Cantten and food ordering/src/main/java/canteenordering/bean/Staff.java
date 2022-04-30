package canteenordering.bean;

public class Staff {
	
	protected int id;
	protected String name;
	protected String email;
	protected String phoneNumber;
	protected String address;
	protected String typeOfWork;
	
	
public Staff() {
		
	}
	
	public Staff(String name, String email, String phoneNumber, String address, String typeOfWork) {
		super();
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.typeOfWork = typeOfWork;
	}

	public Staff(int id, String name, String email, String phoneNumber, String address, String typeOfWork) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.typeOfWork = typeOfWork;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTypeOfWork() {
		return typeOfWork;
	}

	public void setTypeOfWork(String typeOfWork) {
		this.typeOfWork = typeOfWork;
	}
	
	
	
	
	
	

}


