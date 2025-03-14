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


import com.dao.DiscusskebizhanquDao;
import com.entity.DiscusskebizhanquEntity;
import com.service.DiscusskebizhanquService;
import com.entity.vo.DiscusskebizhanquVO;
import com.entity.view.DiscusskebizhanquView;

@Service("discusskebizhanquService")
public class DiscusskebizhanquServiceImpl extends ServiceImpl<DiscusskebizhanquDao, DiscusskebizhanquEntity> implements DiscusskebizhanquService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusskebizhanquEntity> page = this.selectPage(
                new Query<DiscusskebizhanquEntity>(params).getPage(),
                new EntityWrapper<DiscusskebizhanquEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusskebizhanquEntity> wrapper) {
		  Page<DiscusskebizhanquView> page =new Query<DiscusskebizhanquView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusskebizhanquVO> selectListVO(Wrapper<DiscusskebizhanquEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusskebizhanquVO selectVO(Wrapper<DiscusskebizhanquEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusskebizhanquView> selectListView(Wrapper<DiscusskebizhanquEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusskebizhanquView selectView(Wrapper<DiscusskebizhanquEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
