package com.user.service;

import java.util.List;
import com.user.model.User;


public interface IUserService {
	
	public void add(User user);
	
	public void update(User user);
	
	public void delete(int id);
	
	public User get(int id);
	
	public List<User> findAll();
}
