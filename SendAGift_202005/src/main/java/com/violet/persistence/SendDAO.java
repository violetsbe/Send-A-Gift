package com.violet.persistence;

import java.util.List;

import com.violet.domain.Send;

public interface SendDAO {
	
	// 선물하기
	public void insertSend(Send send) throws Exception;
	
	// 선물한 내역 상세 확인
	public Send readSend(String send_id) throws Exception;
	
	// 선물한 내역 전체 조회
	public List<Send> sendListAll() throws Exception;
	
	// 받은 선물 상세 확인
	public Send readRecieve(String send_id) throws Exception;
	
	// 받은 선물 전체 조회
	public List<Send> recieveListAll() throws Exception;
	
	// 선물 수신여부 수정
	public void updateChecked(String send_id) throws Exception;
	
	
}
