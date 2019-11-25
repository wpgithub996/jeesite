package com.thinkgem.jeesite.modules.sys.entity;

import com.thinkgem.jeesite.common.persistence.ActEntity;

/*
* 填空题
* */
public class FillTopic extends ActEntity<FillTopic> {
    private static final long serialVersionUID = 1L;
    public String topicFillEmptyName;//填空题名字
    public String topicFillEmptyContent;//填空题内容
    public String  topicFillEmptyScore;//填空题分值
    public String topicFillEmptyCorrectAnswer;//填空题正确答案
}
