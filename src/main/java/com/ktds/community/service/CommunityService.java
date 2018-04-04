package com.ktds.community.service;

import java.util.List;

import com.ktds.community.vo.CommunityVO;

public interface CommunityService {
	public List<CommunityVO> getAll();
	
	public CommunityVO getOne(int id);
	
	
	public boolean createCommunity(CommunityVO communityVO);
}
