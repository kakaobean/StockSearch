package com.ktds.community.service;

import java.util.List;

import com.ktds.community.dao.CommunityDao;
import com.ktds.community.vo.CommunityVO;

public class CommunityServiceImpl implements CommunityService{
	private CommunityDao communityDao;
	
	public void setCommunityDao(CommunityDao communityDao) {
		this.communityDao = communityDao;
	}

	@Override
	public boolean createCommunity(CommunityVO communityVO) {

			int insertCount = communityDao.insertCommunity(communityVO);

			return insertCount > 0;
		
	}

	@Override
	public List<CommunityVO> getAll() {
		return communityDao.selectAll();
	}

	@Override
	public CommunityVO getOne(int id) {
		// TODO Auto-generated method stub
		return communityDao.selectOne(id);
	}
}
