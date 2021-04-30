package com.user.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Bean类，数据验证
 * 20160520
 * @author hualiu
 *
 */

@Entity
@Table(name = "t_user")
public class User {
	
	@Id
	@Column(name = "USER_ID", length = 20, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	
	
	@NotNull
	@NotEmpty
	@Column(name = "USER_NAME", length = 50, nullable = false, unique = true)
	private String userName;
	
	
	@NotNull
	@NotEmpty
	@Size(min = 6)
	@Column(name = "PASSWORDS", length = 20, nullable = false)
	private String password;
	
	
	@NotNull
	@NotEmpty
	@Column(name = "sex", length = 12, nullable = true)
	private String sex;
	
	
	@NotNull
	@Range(min= 1, max = 150)
	@Column(name = "age", length = 11, nullable = true)
	private Integer age;
	
	@NotNull
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "birthday", length = 10, nullable = true)
	private Date birthday;
	
	
	@NotNull
	@NotEmpty
	@Email
	@Column(name = "email", length = 50, nullable = true, unique = true)
	private String email;
	
	public User() {
		super();
	}
	
	public User(int userId, String userName, String password, String sex, int age, Date birthday, String email) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.birthday = birthday;
		this.email = email;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
