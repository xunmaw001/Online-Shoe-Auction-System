package com.entity.view;

import com.entity.QiuxiefenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 球鞋分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
@TableName("qiuxiefenlei")
public class QiuxiefenleiView  extends QiuxiefenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QiuxiefenleiView(){
	}
 
 	public QiuxiefenleiView(QiuxiefenleiEntity qiuxiefenleiEntity){
 	try {
			BeanUtils.copyProperties(this, qiuxiefenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
