package com.violet.persistence;

import java.util.List;

import com.violet.domain.WishList;

public interface WishListDAO {

	
	// 위시리스트 추가
	public void insertWish(WishList wishList) throws Exception;
	
	// 본인이 조회하는 전체 위시리스트
	public List<WishList> wishListAll() throws Exception;
	
	// 다른 사람이 조회하는 위시리스트
	public List<WishList> wishListOpenedAll() throws Exception;
	
	// 위시리스트 삭제
	public void deleteWish(String wish_id) throws Exception;
	
	// 위시 공개 여부 수정
	public void updateWishOpen(String wish_id) throws Exception;
	
	
}
