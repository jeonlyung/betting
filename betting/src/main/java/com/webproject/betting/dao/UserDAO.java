package com.webproject.betting.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.webproject.betting.domain.UserVO;
import com.webproject.betting.utility.Encryption;

@Repository
public class UserDAO {
	
	@Inject
	private SqlSession session;
	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);
	
	private String NAME_SPACE = "com.webproject.betting.dao.UserDAO";
	
	
	//로그인 정보 가져오기
	public UserVO login(UserVO vo) throws Exception {
		Map<String, Object> dto = new HashMap<>();
		dto.put("email", vo.getEmail());  								// 아이디(이메일)
		dto.put("password", Encryption.SHA512(vo.getPassword()));   // 비밀번호
		logger.info("아이디 : " + vo.getEmail());
		logger.info("암호화비밀번호 : " + Encryption.SHA512(vo.getPassword()));
		
		return session.selectOne(NAME_SPACE + ".login", dto);
		
	}

	//회원가입 정보 추가
	public void regist(UserVO vo) {
		Map<String, Object> dto = new HashMap<>();
		
		dto.put("name", vo.getName()); 
		dto.put("email", vo.getEmail());
		dto.put("password", Encryption.SHA512(vo.getPassword())); //비밀번호 (암호화)
		
		session.insert(NAME_SPACE+ ".regist", dto);
		
	}
	
}
