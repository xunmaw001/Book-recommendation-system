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


import com.dao.RementushuDao;
import com.entity.RementushuEntity;
import com.service.RementushuService;
import com.entity.vo.RementushuVO;
import com.entity.view.RementushuView;

@Service("rementushuService")
public class RementushuServiceImpl extends ServiceImpl<RementushuDao, RementushuEntity> implements RementushuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RementushuEntity> page = this.selectPage(
                new Query<RementushuEntity>(params).getPage(),
                new EntityWrapper<RementushuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<RementushuEntity> wrapper) {
		  Page<RementushuView> page =new Query<RementushuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<RementushuVO> selectListVO(Wrapper<RementushuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public RementushuVO selectVO(Wrapper<RementushuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<RementushuView> selectListView(Wrapper<RementushuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public RementushuView selectView(Wrapper<RementushuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
