package com.violet.domain;

import java.sql.Date;

public class WishList {
	
	public String wish_id;
	public String user_id;
	public String item_id;
	
	public int wish_open;
	public Date wish_regdate;
	
	public String getWish_id() {
		return wish_id;
	}
	public void setWish_id(String wish_id) {
		this.wish_id = wish_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getItem_id() {
		return item_id;
	}
	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	public int getWish_open() {
		return wish_open;
	}
	public void setWish_open(int wish_open) {
		this.wish_open = wish_open;
	}
	public Date getWish_regdate() {
		return wish_regdate;
	}
	public void setWish_regdate(Date wish_regdate) {
		this.wish_regdate = wish_regdate;
	}
	
	

}
