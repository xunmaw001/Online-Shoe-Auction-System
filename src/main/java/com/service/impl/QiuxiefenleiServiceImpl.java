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


import com.dao.QiuxiefenleiDao;
import com.entity.QiuxiefenleiEntity;
import com.service.QiuxiefenleiService;
import com.entity.vo.QiuxiefenleiVO;
import com.entity.view.QiuxiefenleiView;

@Service("qiuxiefenleiService")
public class QiuxiefenleiServiceImpl extends ServiceImpl<QiuxiefenleiDao, QiuxiefenleiEntity> implements QiuxiefenleiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QiuxiefenleiEntity> page = this.selectPage(
                new Query<QiuxiefenleiEntity>(params).getPage(),
                new EntityWrapper<QiuxiefenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QiuxiefenleiEntity> wrapper) {
		  Page<QiuxiefenleiView> page =new Query<QiuxiefenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QiuxiefenleiVO> selectListVO(Wrapper<QiuxiefenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QiuxiefenleiVO selectVO(Wrapper<QiuxiefenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QiuxiefenleiView> selectListView(Wrapper<QiuxiefenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QiuxiefenleiView selectView(Wrapper<QiuxiefenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
