package dto;

import java.io.Serializable;

public class Animal implements Serializable {

	private static final long serialVersionUID = 8585082473015480296L;  //해당 클래스를 변경유무를 확ㅇ인하기 위한 아이디

	private String id ;
	private String name ;
	private String location;
	
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String email) {
		this.location = email;
	}
	
	
	

}
