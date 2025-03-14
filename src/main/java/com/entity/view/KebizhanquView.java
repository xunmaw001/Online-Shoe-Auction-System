package com.entity.view;

import com.entity.KebizhanquEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 科比展区
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
@TableName("kebizhanqu")
public class KebizhanquView  extends KebizhanquEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KebizhanquView(){
	}
 
 	public KebizhanquView(KebizhanquEntity kebizhanquEntity){
 	try {
			BeanUtils.copyProperties(this, kebizhanquEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
