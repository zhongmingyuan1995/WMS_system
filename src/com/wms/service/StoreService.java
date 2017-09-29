package com.wms.service;

import java.util.List;

import com.wms.model.Product;
import com.wms.model.Store;

public interface StoreService {
	/**
	 * 查询仓库的货物列表
	 * @throws Exception 
	 */
	public List<Store> getStoreList() throws Exception;
	/**
	 * 查询某个货号的详细信息
	 */
	public List<Product> getStoreById(String storecode) throws Exception;
}
