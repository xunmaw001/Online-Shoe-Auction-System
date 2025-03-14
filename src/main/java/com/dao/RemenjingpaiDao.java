package com.dao;

import com.entity.RemenjingpaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RemenjingpaiVO;
import com.entity.view.RemenjingpaiView;


/**
 * 热门竞拍
 * 
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface RemenjingpaiDao extends BaseMapper<RemenjingpaiEntity> {
	
	List<RemenjingpaiVO> selectListVO(@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);
	
	RemenjingpaiVO selectVO(@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);
	
	List<RemenjingpaiView> selectListView(@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);

	List<RemenjingpaiView> selectListView(Pagination page,@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);
	
	RemenjingpaiView selectView(@Param("ew") Wrapper<RemenjingpaiEntity> wrapper);
	
}
