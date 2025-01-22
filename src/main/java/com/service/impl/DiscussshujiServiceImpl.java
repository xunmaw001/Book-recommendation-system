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


import com.dao.DiscussshujiDao;
import com.entity.DiscussshujiEntity;
import com.service.DiscussshujiService;
import com.entity.vo.DiscussshujiVO;
import com.entity.view.DiscussshujiView;

@Service("discussshujiService")
public class DiscussshujiServiceImpl extends ServiceImpl<DiscussshujiDao, DiscussshujiEntity> implements DiscussshujiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshujiEntity> page = this.selectPage(
                new Query<DiscussshujiEntity>(params).getPage(),
                new EntityWrapper<DiscussshujiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshujiEntity> wrapper) {
		  Page<DiscussshujiView> page =new Query<DiscussshujiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshujiVO> selectListVO(Wrapper<DiscussshujiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshujiVO selectVO(Wrapper<DiscussshujiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshujiView> selectListView(Wrapper<DiscussshujiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshujiView selectView(Wrapper<DiscussshujiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
