package com.wms.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.Product;
import com.wms.model.Store;
import com.wms.service.StoreService;

import net.sf.json.JSONObject;

@Controller
public class StoreAction {
	@Resource
    private StoreService storeService;
	@RequestMapping("/getStoreList.action")
	public String getStoreList(Model model) throws Exception{
		List<Store> list = storeService.getStoreList();
		model.addAttribute("Store",list);
		return "index";		
	}
	
	@RequestMapping("/getStoreById.action")
	public String getStoreById(String storecode,Model model,HttpServletResponse response) throws Exception{  
		List<Store> store = storeService.getStoreList();
		model.addAttribute("Store",store);
		List<Product> product = storeService.getStoreById(storecode);
		//model.addAttribute("Product",product);
		model.addAttribute("product", product);  
		return "index2";	 
	}
}
