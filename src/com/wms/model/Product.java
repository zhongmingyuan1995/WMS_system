package com.wms.model;

public class Product {
	private int productid;
	private Store store;
	private String productname;
	private String producttime;
	
	public Product() {
		super();
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProducttime() {
		return producttime;
	}

	public void setProducttime(String producttime) {
		this.producttime = producttime;
	}

	@Override
	public String toString() {
		return "Product [productid=" + productid + ", store=" + store + ", productname=" + productname
				+ ", producttime=" + producttime + "]";
	}

	
	
}
