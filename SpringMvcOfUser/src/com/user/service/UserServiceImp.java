package com.user.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.user.dao.IUserDAO;
import com.user.model.User;

@Service
public class UserServiceImp implements IUserService{

	private IUserDAO userDAO;
	
	public IUserDAO getUserDAO() {
		return userDAO;
	}

	@Resource
	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public void add(User user) {
		userDAO.add(user);
	}

	@Override
	public void update(User user) {
		userDAO.update(user);
		
	}

	@Override
	public void delete(int id) {
		userDAO.delete(id);
		
	}

	@Override
	public User get(int id) {
		return userDAO.get(id);
	}

	@Override
	public List<User> findAll() {
		return userDAO.findAll();
	}

}
