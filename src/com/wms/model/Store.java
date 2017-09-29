package com.wms.model;

public class Store {
	private int storeid;
	private String storecode;
	private String storename;
	private String storetime;
	
	public Store() {
		super();
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}

	public String getStorecode() {
		return storecode;
	}

	public void setStorecode(String storecode) {
		this.storecode = storecode;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getStoretime() {
		return storetime;
	}

	public void setStoretime(String storetime) {
		this.storetime = storetime;
	}

	@Override
	public String toString() {
		return "Store [storeid=" + storeid + ", storecode=" + storecode + ", storename=" + storename + ", storetime="
				+ storetime + "]";
	}
	
	
}
