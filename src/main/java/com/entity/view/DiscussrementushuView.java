package com.entity.view;

import com.entity.DiscussrementushuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门图书评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
@TableName("discussrementushu")
public class DiscussrementushuView  extends DiscussrementushuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussrementushuView(){
	}
 
 	public DiscussrementushuView(DiscussrementushuEntity discussrementushuEntity){
 	try {
			BeanUtils.copyProperties(this, discussrementushuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
