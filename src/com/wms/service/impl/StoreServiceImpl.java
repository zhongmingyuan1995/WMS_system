package com.wms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wms.mapper.StoreMapper;
import com.wms.model.Product;
import com.wms.model.Store;
import com.wms.service.StoreService;
@Service
public class StoreServiceImpl implements StoreService {
	
	@Resource
    private StoreMapper storeMapper;
	@Override
	public List<Store> getStoreList() throws Exception {
		List<Store> list = storeMapper.getStoreList();
		if(list==null){
            throw new Exception("List is empty!");
        }
		return list;
	}

	@Override
	public List<Product> getStoreById(String storecode) throws Exception{
		List<Product> list = storeMapper.getStoreById(storecode);
		if(list==null){
            throw new Exception("List is empty!");
        }
		return list;
	}

}
