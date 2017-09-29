package com.wms.mapper;

import java.util.List;

import com.wms.model.Product;
import com.wms.model.Store;

public interface StoreMapper {
	/**
	 * 查询仓库的货物列表
	 * @param sqlStr
	 * @return
	 */
	public List<Store> getStoreList();
	/**
	 * 查询某个货号的详细信息
	 */
	public List<Product> getStoreById(String storecode);

}
