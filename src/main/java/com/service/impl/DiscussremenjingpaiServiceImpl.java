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


import com.dao.DiscussremenjingpaiDao;
import com.entity.DiscussremenjingpaiEntity;
import com.service.DiscussremenjingpaiService;
import com.entity.vo.DiscussremenjingpaiVO;
import com.entity.view.DiscussremenjingpaiView;

@Service("discussremenjingpaiService")
public class DiscussremenjingpaiServiceImpl extends ServiceImpl<DiscussremenjingpaiDao, DiscussremenjingpaiEntity> implements DiscussremenjingpaiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussremenjingpaiEntity> page = this.selectPage(
                new Query<DiscussremenjingpaiEntity>(params).getPage(),
                new EntityWrapper<DiscussremenjingpaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussremenjingpaiEntity> wrapper) {
		  Page<DiscussremenjingpaiView> page =new Query<DiscussremenjingpaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussremenjingpaiVO> selectListVO(Wrapper<DiscussremenjingpaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussremenjingpaiVO selectVO(Wrapper<DiscussremenjingpaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussremenjingpaiView> selectListView(Wrapper<DiscussremenjingpaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussremenjingpaiView selectView(Wrapper<DiscussremenjingpaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
