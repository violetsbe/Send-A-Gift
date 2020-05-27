package com.violet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.violet.domain.WishList;

@Repository
public class WishListDAOImpl implements WishListDAO {

	@Inject
	private SqlSession session;
	
	//whistlistMapper.xml
	private static final String namespace = "com.violet.mapper.WishListMapper";
	
	
	
	// 위시리스트 추가
	@Override
	public void insertWish(WishList wishList) throws Exception {
		session.insert(namespace+".insertWish", wishList);
	}

	// 본인이 조회하는 전체 위시리스트
	@Override
	public List<WishList> wishListAll() throws Exception {

		return session.selectList(namespace+".wishListAll");
	}

	// 다른 사람이 조회하는 위시리스트
	@Override
	public List<WishList> wishListOpenedAll() throws Exception {
		return session.selectList(namespace+".wishListOpenedAll");
	}

	// 위시리스트 삭제
	@Override
	public void deleteWish(String wish_id) throws Exception {
		session.delete(namespace+".deleteWish", wish_id);
	}

	// 위시 공개 여부 수정
	@Override
	public void updateWishOpen(String wish_id) throws Exception {
		session.update(namespace+".updateWishOpen", wish_id);
	}

}
