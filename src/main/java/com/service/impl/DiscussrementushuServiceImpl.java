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


import com.dao.DiscussrementushuDao;
import com.entity.DiscussrementushuEntity;
import com.service.DiscussrementushuService;
import com.entity.vo.DiscussrementushuVO;
import com.entity.view.DiscussrementushuView;

@Service("discussrementushuService")
public class DiscussrementushuServiceImpl extends ServiceImpl<DiscussrementushuDao, DiscussrementushuEntity> implements DiscussrementushuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussrementushuEntity> page = this.selectPage(
                new Query<DiscussrementushuEntity>(params).getPage(),
                new EntityWrapper<DiscussrementushuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussrementushuEntity> wrapper) {
		  Page<DiscussrementushuView> page =new Query<DiscussrementushuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussrementushuVO> selectListVO(Wrapper<DiscussrementushuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussrementushuVO selectVO(Wrapper<DiscussrementushuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussrementushuView> selectListView(Wrapper<DiscussrementushuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussrementushuView selectView(Wrapper<DiscussrementushuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
