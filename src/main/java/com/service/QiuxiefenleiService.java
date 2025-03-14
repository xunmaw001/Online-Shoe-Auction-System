package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QiuxiefenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QiuxiefenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QiuxiefenleiView;


/**
 * 球鞋分类
 *
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface QiuxiefenleiService extends IService<QiuxiefenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QiuxiefenleiVO> selectListVO(Wrapper<QiuxiefenleiEntity> wrapper);
   	
   	QiuxiefenleiVO selectVO(@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);
   	
   	List<QiuxiefenleiView> selectListView(Wrapper<QiuxiefenleiEntity> wrapper);
   	
   	QiuxiefenleiView selectView(@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QiuxiefenleiEntity> wrapper);
   	
}

