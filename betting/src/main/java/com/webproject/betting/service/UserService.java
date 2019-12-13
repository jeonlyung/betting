package com.webproject.betting.service;

import com.webproject.betting.domain.UserVO;

public interface UserService {

	public UserVO login(UserVO vo) throws Exception;
	
	public void regist(UserVO vo) throws Exception;
	
}
