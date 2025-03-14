package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusskebizhanquEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusskebizhanquVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusskebizhanquView;


/**
 * 科比展区评论表
 *
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface DiscusskebizhanquService extends IService<DiscusskebizhanquEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusskebizhanquVO> selectListVO(Wrapper<DiscusskebizhanquEntity> wrapper);
   	
   	DiscusskebizhanquVO selectVO(@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);
   	
   	List<DiscusskebizhanquView> selectListView(Wrapper<DiscusskebizhanquEntity> wrapper);
   	
   	DiscusskebizhanquView selectView(@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusskebizhanquEntity> wrapper);
   	
}

