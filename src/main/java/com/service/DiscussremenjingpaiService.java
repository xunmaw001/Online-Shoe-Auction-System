package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussremenjingpaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussremenjingpaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussremenjingpaiView;


/**
 * 热门竞拍评论表
 *
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface DiscussremenjingpaiService extends IService<DiscussremenjingpaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussremenjingpaiVO> selectListVO(Wrapper<DiscussremenjingpaiEntity> wrapper);
   	
   	DiscussremenjingpaiVO selectVO(@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);
   	
   	List<DiscussremenjingpaiView> selectListView(Wrapper<DiscussremenjingpaiEntity> wrapper);
   	
   	DiscussremenjingpaiView selectView(@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussremenjingpaiEntity> wrapper);
   	
}

