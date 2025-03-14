package com.dao;

import com.entity.KebizhanquEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KebizhanquVO;
import com.entity.view.KebizhanquView;


/**
 * 科比展区
 * 
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface KebizhanquDao extends BaseMapper<KebizhanquEntity> {
	
	List<KebizhanquVO> selectListVO(@Param("ew") Wrapper<KebizhanquEntity> wrapper);
	
	KebizhanquVO selectVO(@Param("ew") Wrapper<KebizhanquEntity> wrapper);
	
	List<KebizhanquView> selectListView(@Param("ew") Wrapper<KebizhanquEntity> wrapper);

	List<KebizhanquView> selectListView(Pagination page,@Param("ew") Wrapper<KebizhanquEntity> wrapper);
	
	KebizhanquView selectView(@Param("ew") Wrapper<KebizhanquEntity> wrapper);
	
}
