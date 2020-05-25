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
	
	
	@Override
	public void insertItem(Item item) throws Exception {
		session.insert(namespace+".insertItem", item);
	}

	@Override
	public Item readItem(String item_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateItem(Item item) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteItem(String item_id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Item> itemListAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
