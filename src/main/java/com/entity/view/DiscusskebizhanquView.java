package com.entity.view;

import com.entity.DiscusskebizhanquEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 科比展区评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
@TableName("discusskebizhanqu")
public class DiscusskebizhanquView  extends DiscusskebizhanquEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusskebizhanquView(){
	}
 
 	public DiscusskebizhanquView(DiscusskebizhanquEntity discusskebizhanquEntity){
 	try {
			BeanUtils.copyProperties(this, discusskebizhanquEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
