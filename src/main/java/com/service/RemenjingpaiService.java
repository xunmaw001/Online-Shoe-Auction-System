package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.RemenjingpaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.RemenjingpaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.RemenjingpaiView;


/**
 * 热门竞拍
 *
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface RemenjingpaiService extends IService<RemenjingpaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RemenjingpaiVO> selectListVO(Wrapper<RemenjingpaiEntity> wrapper);
   	
   	RemenjingpaiVO selectVO(@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);
   	
   	List<RemenjingpaiView> selectListView(Wrapper<RemenjingpaiEntity> wrapper);
   	
   	RemenjingpaiView selectView(@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RemenjingpaiEntity> wrapper);
   	
}

