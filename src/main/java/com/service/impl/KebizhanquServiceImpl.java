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


import com.dao.KebizhanquDao;
import com.entity.KebizhanquEntity;
import com.service.KebizhanquService;
import com.entity.vo.KebizhanquVO;
import com.entity.view.KebizhanquView;

@Service("kebizhanquService")
public class KebizhanquServiceImpl extends ServiceImpl<KebizhanquDao, KebizhanquEntity> implements KebizhanquService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KebizhanquEntity> page = this.selectPage(
                new Query<KebizhanquEntity>(params).getPage(),
                new EntityWrapper<KebizhanquEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KebizhanquEntity> wrapper) {
		  Page<KebizhanquView> page =new Query<KebizhanquView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KebizhanquVO> selectListVO(Wrapper<KebizhanquEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KebizhanquVO selectVO(Wrapper<KebizhanquEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KebizhanquView> selectListView(Wrapper<KebizhanquEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KebizhanquView selectView(Wrapper<KebizhanquEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
