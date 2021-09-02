package org.zerock.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{ // 구현
	public static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	private MemberMapper mapper;
	
	// 회원가입
	public void sign_upMake(MemberVO member) {
		logger.info("sign_upMake....." + member);
		
		mapper.insert(member);
	}
	
	// 로그인
	public MemberVO login(MemberVO member) {
		logger.info("login....." + member);
		
		return mapper.login(member);
	}
	
}
