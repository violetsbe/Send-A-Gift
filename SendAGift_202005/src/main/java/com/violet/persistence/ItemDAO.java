package com.violet.persistence;

import java.util.List;

import com.violet.domain.Item;

public interface ItemDAO {

	// 상품 등록(추가)
	public void insertItem(Item item) throws Exception;
	
	// 상품 보기
	public Item readItem(String item_id) throws Exception;
	
	// 상품 수정
	public void updateItem(Item item) throws Exception;
	
	// 상품 삭제
	public void deleteItem(String item_id) throws Exception;
	
	// 상품 목록 보기
	public List<Item> itemListAll() throws Exception;
	
	
	
	
	// 태그 추가
	
	// 태그 보기
	
	// 태그 삭제
	
	
}
