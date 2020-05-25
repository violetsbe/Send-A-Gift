package com.violet.domain;

import java.sql.Date;

public class Send {

	private String send_id;
	private String giver;
	private String taker;
	private String item_id;
	private String send_message;
	
	private int amount;
	private int checked;
	private Date order_date;
	private Date checked_date;
	
	
	public String getSend_id() {
		return send_id;
	}
	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}
	public String getGiver() {
		return giver;
	}
	public void setGiver(String giver) {
		this.giver = giver;
	}
	public String getTaker() {
		return taker;
	}
	public void setTaker(String taker) {
		this.taker = taker;
	}
	public String getItem_id() {
		return item_id;
	}
	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	public String getSend_message() {
		return send_message;
	}
	public void setSend_message(String send_message) {
		this.send_message = send_message;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getChecked() {
		return checked;
	}
	public void setChecked(int checked) {
		this.checked = checked;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public Date getChecked_date() {
		return checked_date;
	}
	public void setChecked_date(Date checked_date) {
		this.checked_date = checked_date;
	}
	
	
	
}
