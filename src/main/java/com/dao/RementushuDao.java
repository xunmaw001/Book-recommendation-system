package com.dao;

import com.entity.RementushuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RementushuVO;
import com.entity.view.RementushuView;


/**
 * 热门图书
 * 
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
public interface RementushuDao extends BaseMapper<RementushuEntity> {
	
	List<RementushuVO> selectListVO(@Param("ew") Wrapper<RementushuEntity> wrapper);
	
	RementushuVO selectVO(@Param("ew") Wrapper<RementushuEntity> wrapper);
	
	List<RementushuView> selectListView(@Param("ew") Wrapper<RementushuEntity> wrapper);

	List<RementushuView> selectListView(Pagination page,@Param("ew") Wrapper<RementushuEntity> wrapper);
	
	RementushuView selectView(@Param("ew") Wrapper<RementushuEntity> wrapper);
	

}
