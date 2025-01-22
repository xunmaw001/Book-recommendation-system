package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussrementushuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussrementushuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussrementushuView;


/**
 * 热门图书评论表
 *
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
public interface DiscussrementushuService extends IService<DiscussrementushuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussrementushuVO> selectListVO(Wrapper<DiscussrementushuEntity> wrapper);
   	
   	DiscussrementushuVO selectVO(@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);
   	
   	List<DiscussrementushuView> selectListView(Wrapper<DiscussrementushuEntity> wrapper);
   	
   	DiscussrementushuView selectView(@Param("ew") Wrapper<DiscussrementushuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussrementushuEntity> wrapper);
   	

}

