package com.entity.view;

import com.entity.DiscussremenjingpaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门竞拍评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
@TableName("discussremenjingpai")
public class DiscussremenjingpaiView  extends DiscussremenjingpaiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussremenjingpaiView(){
	}
 
 	public DiscussremenjingpaiView(DiscussremenjingpaiEntity discussremenjingpaiEntity){
 	try {
			BeanUtils.copyProperties(this, discussremenjingpaiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
