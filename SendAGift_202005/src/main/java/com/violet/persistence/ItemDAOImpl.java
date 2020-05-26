package com.violet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.violet.domain.Item;

@Repository
public class ItemDAOImpl implements ItemDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.violet.mapper.ItemMapper";
	
	// 상품 등록
	@Override
	public void insertItem(Item item) throws Exception {
		session.insert(namespace+".insertItem", item);
	}

	// 상품 조회
	@Override
	public Item readItem(String item_id) throws Exception {
		return session.selectOne(namespace+".readItem", item_id);
	}

	// 상품 수정
	@Override
	public void updateItem(Item item) throws Exception {
		session.update(namespace+".updateItem", item);
	}

	// 상품 삭제
	@Override
	public void deleteItem(String item_id) throws Exception {
		session.delete(namespace+".deleteItem", item_id);
	}

	// 전체 상품 조회
	@Override
	public List<Item> itemListAll() throws Exception {
		return session.selectList(namespace+".itemListAll");
	}

}
