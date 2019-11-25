package com.thinkgem.jeesite.modules.sys.entity;

import com.thinkgem.jeesite.common.persistence.ActEntity;

/*
* 多选题
* */
public class ManyTopic  extends ActEntity<ManyTopic> {
    private static final long serialVersionUID = 1L;
    public String topicManyName;//多选题名字
    public String topicManyOption;//多选题选项
    public String topicManyScore;//多选题分值
    public String topicManyCorrectAnswer;//多选题正确答案
}
