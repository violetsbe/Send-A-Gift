package com.violet.persistence;

import com.violet.domain.User;

public interface UserDAO {
	
	// 테스트(mapper)
	public String getTime();


	// 유저 등록
	public void insertUser(User user);
	
	// 유저 정보 확인
	public User readUser(String user_id) throws Exception;
	
	// 유저 정보 확인 (기본)
	public User selectWithPW(String id, String pwd) throws Exception;
	
	// 유저 정보 수정
	
	// 유저 삭제
	
	// 친구 등록
	
	// 친구 삭제
	
}
