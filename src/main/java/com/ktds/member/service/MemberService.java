package com.ktds.member.service;

import java.util.List;

import com.ktds.member.vo.MemberVO;

public interface MemberService {
	public boolean createMember(MemberVO memberVO);
	public MemberVO readMember(MemberVO memberVO);
}
