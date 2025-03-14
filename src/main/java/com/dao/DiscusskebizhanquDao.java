package com.dao;

import com.entity.DiscusskebizhanquEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusskebizhanquVO;
import com.entity.view.DiscusskebizhanquView;


/**
 * 科比展区评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface DiscusskebizhanquDao extends BaseMapper<DiscusskebizhanquEntity> {
	
	List<DiscusskebizhanquVO> selectListVO(@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);
	
	DiscusskebizhanquVO selectVO(@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);
	
	List<DiscusskebizhanquView> selectListView(@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);

	List<DiscusskebizhanquView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);
	
	DiscusskebizhanquView selectView(@Param("ew") Wrapper<DiscusskebizhanquEntity> wrapper);
	
}
