package com.thinkgem.jeesite.modules.sys.dao;

/*
*
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
*/

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.entity.Volume;

import java.util.List;

/*
*
 * 用户DAO接口
 * @author guoshilong
 * @version 2019-11-20

*/

@MyBatisDao
public interface InvestigationDao extends CrudDao<Volume>  {


/*
*
	 * 保存调查卷
	 * @param
	 * @return	2019-11-20


*/

	void saveInfo(Volume volume);

	void saveOne(Volume volume);
}
