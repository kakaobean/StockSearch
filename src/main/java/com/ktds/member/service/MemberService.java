package com.ktds.member.service;

import java.util.List;

import com.ktds.member.vo.MemberVO;

public interface MemberService {
	public List<MemberVO> selectAll();
	public MemberVO selectOne();
	public boolean createMember(MemberVO memberVO);
}
