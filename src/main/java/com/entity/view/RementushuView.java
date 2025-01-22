package com.entity.view;

import com.entity.RementushuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门图书
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-25 22:30:44
 */
@TableName("rementushu")
public class RementushuView  extends RementushuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RementushuView(){
	}
 
 	public RementushuView(RementushuEntity rementushuEntity){
 	try {
			BeanUtils.copyProperties(this, rementushuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
