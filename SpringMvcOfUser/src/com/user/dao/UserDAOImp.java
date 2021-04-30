package com.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.user.model.User;

@Repository("userDAOImp")
public class UserDAOImp extends HibernateDaoSupport implements IUserDAO {
	
	@Resource
	public void setSupersessionFactory(SessionFactory sessionFactory){
		this.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void add(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);
	}

	public void delete(int id) {
		User user = this.get(id);
		this.getHibernateTemplate().delete(user);
	}

	public User get(int id) {
		return this.getHibernateTemplate().get(User.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAll() {
		return this.getHibernateTemplate().find("from User");
		//return this.getSession().createQuery("from User").list();
	}

	@Override
	public User getByUsername(String userName) {
		return (User)this.getSession().createQuery("from User where userName=?")
				.setParameter(0, userName).uniqueResult();
	}
}
