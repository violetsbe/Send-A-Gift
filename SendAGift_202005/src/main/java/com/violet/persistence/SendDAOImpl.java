package com.violet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.violet.domain.Send;

@Repository
public class SendDAOImpl implements SendDAO {

	@Inject
	private SqlSession session;
	
	//sendMapper.xml
	private static final String namespace = "com.violet.mapper.SendMapper";
	
	
	
	// 선물하기
	@Override
	public void insertSend(Send send) throws Exception {
		session.insert(namespace+".insert", send);
	}

	// 선물한 내역 상세 조회
	@Override
	public Send readSend(String send_id) throws Exception {
		return session.selectOne(namespace+".readSend", send_id);
	}
	
	// 받은 선물 상세 조회
	@Override
	public Send readRecieve(String send_id) throws Exception {
		return session.selectOne(namespace+".readRecieve", send_id);
	}

	// 선물한 내역 전체 조회
	@Override
	public List<Send> sendListAll() throws Exception {
		return session.selectList(namespace+".sendListAll");
	}

	// 받은 선물 전체 조회
	@Override
	public List<Send> recieveListAll() throws Exception {
		return session.selectList(namespace+".recieveListAll");
	}

	// 선물 수신여부 수정
	@Override
	public void updateChecked(String send_id) throws Exception {
		session.update(namespace+".updateChecked", send_id);
	}

}
