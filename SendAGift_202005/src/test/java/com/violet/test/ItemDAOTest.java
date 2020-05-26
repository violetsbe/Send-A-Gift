package com.violet.test;

import javax.inject.Inject;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.violet.domain.Item;
import com.violet.persistence.ItemDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class ItemDAOTest {

	@Inject
	ItemDAO dao;
	
	private static org.slf4j.Logger logger = LoggerFactory.getLogger(ItemDAOTest.class);
	
	// 상품 등록 테스트
	@Test
	public void testInsertItem() throws Exception {
		//item_id, cate_id, prov_id, item_title, item_price, item_stock, item_detail
		Item item = new Item();
		item.setItem_id("ITEM0003");
		item.setCate_id("CA0001");
		item.setProv_id("PR0002");
		item.setItem_title("헤어핀");
		item.setItem_price(15900);
		item.setItem_stock(200);
		item.setItem_detail("헤어핀 입니다. 테스트");
		
		dao.insertItem(item);
	}
	
	// 상품 조회
	@Test
	public void testReadItem() throws Exception {
		
		logger.info(dao.readItem("ITEM0001").toString());
		
	}
	
	// 상품 수정
	@Test
	public void testUpdateItem() throws Exception {
		// cate_id, prov_id, item_title, item_price, item_stock, item_detail
		Item item = new Item();
		item.setItem_id("ITEM0002");
		item.setCate_id("CA0002");
		item.setProv_id("PR0002");
		item.setItem_title("별 모양 목걸이");
		item.setItem_price(25000);
		item.setItem_stock(300);
		item.setItem_detail("우주에서 반짝! 빛나는 별 목걸이.");
		
		dao.updateItem(item);
	}
	
	// 상품 삭제
	@Test
	public void testDeleteItem() throws Exception {
		dao.deleteItem("ITEM0003");
	}
}
