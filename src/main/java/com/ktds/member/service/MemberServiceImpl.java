package com.ktds.member.service;

import java.util.List;

import com.ktds.community.dao.CommunityDao;
import com.ktds.member.dao.MemberDao;
import com.ktds.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService{
	private MemberDao memberDao; 
	
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}


	@Override
	public boolean createMember(MemberVO memberVO) {
		return memberDao.insertMember(memberVO) > 0;
	}


	@Override
	public MemberVO readMember(MemberVO memberVO) {
		return memberDao.selectMember(memberVO);
	}



}
