package com.user.dao;

import java.util.List;
import com.user.model.User;


public interface IUserDAO {
	
	public void add(User user);
	
	public void update(User user);
	
	public void delete(int id);
	
	public User get(int id);
	
	public List<User> findAll();
	
	public User getByUsername(String userName);
}
