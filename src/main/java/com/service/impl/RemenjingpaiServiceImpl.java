package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.RemenjingpaiDao;
import com.entity.RemenjingpaiEntity;
import com.service.RemenjingpaiService;
import com.entity.vo.RemenjingpaiVO;
import com.entity.view.RemenjingpaiView;

@Service("remenjingpaiService")
public class RemenjingpaiServiceImpl extends ServiceImpl<RemenjingpaiDao, RemenjingpaiEntity> implements RemenjingpaiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RemenjingpaiEntity> page = this.selectPage(
                new Query<RemenjingpaiEntity>(params).getPage(),
                new EntityWrapper<RemenjingpaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<RemenjingpaiEntity> wrapper) {
		  Page<RemenjingpaiView> page =new Query<RemenjingpaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<RemenjingpaiVO> selectListVO(Wrapper<RemenjingpaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public RemenjingpaiVO selectVO(Wrapper<RemenjingpaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<RemenjingpaiView> selectListView(Wrapper<RemenjingpaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public RemenjingpaiView selectView(Wrapper<RemenjingpaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
