package com.ktds.community.dao;

import java.util.List;

import com.ktds.community.vo.CommunityVO;


public interface CommunityDao {
	public List<CommunityVO> selectAll();
	
	public int insertCommunity(CommunityVO communityVO);
	
	public CommunityVO selectOne(int id);
}
