package com.wms.mapper;

import java.util.List;

import com.wms.model.Product;
import com.wms.model.Store;

public interface StoreMapper {
	/**
	 * ��ѯ�ֿ�Ļ����б�
	 * @param sqlStr
	 * @return
	 */
	public List<Store> getStoreList();
	/**
	 * ��ѯĳ�����ŵ���ϸ��Ϣ
	 */
	public List<Product> getStoreById(String storecode);

}
