package com.dao;

import com.entity.QiuxiefenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QiuxiefenleiVO;
import com.entity.view.QiuxiefenleiView;


/**
 * 球鞋分类
 * 
 * @author 
 * @email 
 * @date 2021-01-11 11:36:51
 */
public interface QiuxiefenleiDao extends BaseMapper<QiuxiefenleiEntity> {
	
	List<QiuxiefenleiVO> selectListVO(@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);
	
	QiuxiefenleiVO selectVO(@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);
	
	List<QiuxiefenleiView> selectListView(@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);

	List<QiuxiefenleiView> selectListView(Pagination page,@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);
	
	QiuxiefenleiView selectView(@Param("ew") Wrapper<QiuxiefenleiEntity> wrapper);
	
}
