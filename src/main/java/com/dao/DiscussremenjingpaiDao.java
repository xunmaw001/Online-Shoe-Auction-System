package com.dao;

import com.entity.DiscussremenjingpaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussremenjingpaiVO;
import com.entity.view.DiscussremenjingpaiView;


/**
 * 热门竞拍评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface DiscussremenjingpaiDao extends BaseMapper<DiscussremenjingpaiEntity> {
	
	List<DiscussremenjingpaiVO> selectListVO(@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);
	
	DiscussremenjingpaiVO selectVO(@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);
	
	List<DiscussremenjingpaiView> selectListView(@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);

	List<DiscussremenjingpaiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);
	
	DiscussremenjingpaiView selectView(@Param("ew") Wrapper<DiscussremenjingpaiEntity> wrapper);
	
}
