package com.violet.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.violet.domain.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;
	
	//userMapper.xml
	private static final String namespace = "com.violet.mapper.UserMapper";
	
	
	@Override
	public String getTime() {
		return session.selectOne(namespace+".getTime");
	}

	@Override
	public void insertUser(User user) {
		session.insert(namespace+".insertUser", user);
	}

	@Override
	public User readUser(String user_id) throws Exception {
		
		return session.selectOne(namespace+".selectMember", user_id);
	}

	@Override
	public User selectWithPW(String id, String pwd) throws Exception {
		// 파라미터가 2개 이상 전달되는 경우, Map 타입의 객체 구성
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("id", id);
		paramMap.put("pwd", pwd);
		
		return session.selectOne(namespace+".selectWithPW", paramMap);
	}




}
