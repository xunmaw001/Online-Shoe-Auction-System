package com.entity.view;

import com.entity.RemenjingpaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门竞拍
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
@TableName("remenjingpai")
public class RemenjingpaiView  extends RemenjingpaiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RemenjingpaiView(){
	}
 
 	public RemenjingpaiView(RemenjingpaiEntity remenjingpaiEntity){
 	try {
			BeanUtils.copyProperties(this, remenjingpaiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
