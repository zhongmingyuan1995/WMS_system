package com.wms.service;

import java.util.List;

import com.wms.model.Product;
import com.wms.model.Store;

public interface StoreService {
	/**
	 * ��ѯ�ֿ�Ļ����б�
	 * @throws Exception 
	 */
	public List<Store> getStoreList() throws Exception;
	/**
	 * ��ѯĳ�����ŵ���ϸ��Ϣ
	 */
	public List<Product> getStoreById(String storecode) throws Exception;
}
