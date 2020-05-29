package com.violet.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.violet.domain.User;
import com.violet.persistence.UserDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class UserDAOTest {

	@Inject
	private UserDAO dao;
	
	@Test
	public void testTime() throws Exception {
		
		System.out.println(dao.getTime());
		
	}
	
	// 유저 등록 테스트
	@Test
	public void testInsertUser() throws Exception {
		//user_id, id, pwd, user_name, birth, gender, email, user_level, status_message
		User user = new User();
		user.setId("user003");
		user.setPwd("usertest");
		user.setUser_name("TEST");
		user.setBirth(java.sql.Date.valueOf("1990-01-01"));
		user.setGender(0);
		user.setEmail("test333@test.com");
		user.setUser_level(1);
		user.setStatus_message("상태메세지입니다.333");
		
		dao.insertUser(user);
		
	}
}
