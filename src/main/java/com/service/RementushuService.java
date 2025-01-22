package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.RementushuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.RementushuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.RementushuView;


/**
 * 热门图书
 *
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
public interface RementushuService extends IService<RementushuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RementushuVO> selectListVO(Wrapper<RementushuEntity> wrapper);
   	
   	RementushuVO selectVO(@Param("ew") Wrapper<RementushuEntity> wrapper);
   	
   	List<RementushuView> selectListView(Wrapper<RementushuEntity> wrapper);
   	
   	RementushuView selectView(@Param("ew") Wrapper<RementushuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RementushuEntity> wrapper);
   	

}

