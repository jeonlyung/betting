package com.webproject.betting.service.impl;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.webproject.betting.dao.UserDAO;
import com.webproject.betting.domain.UserVO;
import com.webproject.betting.service.UserService;

@Service
public class UserSeviceImpl implements UserService {

	private Logger logger = LoggerFactory.getLogger(UserSeviceImpl.class);
	
	@Inject
	UserDAO userDao;
	
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return userDao.login(vo);
	}

	@Override
	public void regist(UserVO vo) throws Exception {
		userDao.regist(vo);
	}

}
