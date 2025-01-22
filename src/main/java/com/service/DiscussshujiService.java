package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshujiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshujiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshujiView;


/**
 * 书籍评论表
 *
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
public interface DiscussshujiService extends IService<DiscussshujiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshujiVO> selectListVO(Wrapper<DiscussshujiEntity> wrapper);
   	
   	DiscussshujiVO selectVO(@Param("ew") Wrapper<DiscussshujiEntity> wrapper);
   	
   	List<DiscussshujiView> selectListView(Wrapper<DiscussshujiEntity> wrapper);
   	
   	DiscussshujiView selectView(@Param("ew") Wrapper<DiscussshujiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshujiEntity> wrapper);
   	

}

