package org.zerock.service;

import org.zerock.domain.MemberVO;


public interface MemberService {
	// 회원가입 처리
	public void sign_upMake(MemberVO member);
	
	// 로그인 처리
	public MemberVO login(MemberVO member);
}
