package ch04.com.dao;

public class MemberBean {
	private int id;
	private String name; // 멤버변수 정의

	public MemberBean() {
		// 기본 생성자
		
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

}
