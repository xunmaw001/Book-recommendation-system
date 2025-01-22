package com.dao;

import com.entity.DiscussrementushuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussrementushuVO;
import com.entity.view.DiscussrementushuView;


/**
 * 热门图书评论表
 * 
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
public interface DiscussrementushuDao extends BaseMapper<DiscussrementushuEntity> {
	
	List<DiscussrementushuVO> selectListVO(@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);
	
	DiscussrementushuVO selectVO(@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);
	
	List<DiscussrementushuView> selectListView(@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);

	List<DiscussrementushuView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);
	
	DiscussrementushuView selectView(@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);
	

}
