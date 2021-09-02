package org.zerock.mapper;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	public void insert(MemberVO member);

	public MemberVO login(MemberVO member);
}
