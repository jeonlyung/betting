package com.webproject.betting.service;

import com.webproject.betting.domain.UserVO;

public interface UserService {

//	로그인
	public UserVO login(UserVO vo) throws Exception;
	
//	회원가입
	public void regist(UserVO vo) throws Exception;
	
}
