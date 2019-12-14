package com.webproject.betting.service.impl;

import javax.inject.Inject;

import com.webproject.betting.dao.UserDAO;
import com.webproject.betting.domain.UserVO;
import com.webproject.betting.service.UserService;

public class UserSeviceImpl implements UserService {

	@Inject
	UserDAO userdao;
	
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return userdao.login(vo);
	}

	@Override
	public void regist(UserVO vo) throws Exception {
		userdao.regist(vo);
	}

}
