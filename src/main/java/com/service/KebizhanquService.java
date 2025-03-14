package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KebizhanquEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KebizhanquVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KebizhanquView;


/**
 * 科比展区
 *
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface KebizhanquService extends IService<KebizhanquEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KebizhanquVO> selectListVO(Wrapper<KebizhanquEntity> wrapper);
   	
   	KebizhanquVO selectVO(@Param("ew") Wrapper<KebizhanquEntity> wrapper);
   	
   	List<KebizhanquView> selectListView(Wrapper<KebizhanquEntity> wrapper);
   	
   	KebizhanquView selectView(@Param("ew") Wrapper<KebizhanquEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KebizhanquEntity> wrapper);
   	
}

