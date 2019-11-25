package com.thinkgem.jeesite.modules.sys.service;

import com.thinkgem.jeesite.modules.sys.dao.InvestigationDao;
import com.thinkgem.jeesite.modules.sys.dao.UserDao;
import com.thinkgem.jeesite.modules.sys.entity.Volume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class InvestigationService {
    @Autowired
    private InvestigationDao investigationDao;

    public void save(Volume volume) {
        investigationDao.saveInfo(volume);
        for(int i=0; i<volume.getOneTopicList().size();i++){
            investigationDao.saveOne(volume);
        }

    }
}

