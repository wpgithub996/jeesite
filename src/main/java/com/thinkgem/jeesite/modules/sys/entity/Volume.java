package com.thinkgem.jeesite.modules.sys.entity;


import com.thinkgem.jeesite.common.persistence.ActEntity;
import com.thinkgem.jeesite.common.persistence.DataEntity;

import java.util.List;

/**
 *          调查问卷信息
 * @author guoshilong
 * @date 2019-11-20 1:25
 *
 */
public class Volume extends ActEntity<Volume> {
    private static final long serialVersionUID = 1L;
    public String topicName;//调查问卷名称
    public String topicNumber;//调查问卷编号
    public String topicDate;//调查问卷时间
    public String topicAreaId;//调查表所属地区
    public OneTopic oneTopic; //单选题对象
    public List<OneTopic> oneTopicList;
    public String topicOneAnswer;//单选题答案
    public ManyTopic manyTopic; //多选题对象
    public String topicManyAnswer;//多选题答案
    public FillTopic fillTopic;//填空题对象
    public String topicFillEmptyAnswer;//填空题答案
    public String topicExplainName;//描述说明标题
    public String topicExplainContent;//描述说明内容




    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public String getTopicNumber() {
        return topicNumber;
    }

    public void setTopicNumber(String topicNumber) {
        this.topicNumber = topicNumber;
    }

    public String getTopicDate() {
        return topicDate;
    }

    public void setTopicDate(String topicDate) {
        this.topicDate = topicDate;
    }

    public String getTopicAreaId() {
        return topicAreaId;
    }

    public void setTopicAreaId(String topicAreaId) {
        this.topicAreaId = topicAreaId;
    }


    public String getTopicOneAnswer() {
        return topicOneAnswer;
    }

    public void setTopicOneAnswer(String topicOneAnswer) {
        this.topicOneAnswer = topicOneAnswer;
    }

    public String getTopicManyAnswer() {
        return topicManyAnswer;
    }

    public void setTopicManyAnswer(String topicManyAnswer) {
        this.topicManyAnswer = topicManyAnswer;
    }


    public String getTopicFillEmptyAnswer() {
        return topicFillEmptyAnswer;
    }

    public void setTopicFillEmptyAnswer(String topicFillEmptyAnswer) {
        this.topicFillEmptyAnswer = topicFillEmptyAnswer;
    }

    public String getTopicExplainName() {
        return topicExplainName;
    }

    public void setTopicExplainName(String topicExplainName) {
        this.topicExplainName = topicExplainName;
    }

    public String getTopicExplainContent() {
        return topicExplainContent;
    }

    public void setTopicExplainContent(String topicExplainContent) {
        this.topicExplainContent = topicExplainContent;
    }

    public OneTopic getOneTopic() {
        return oneTopic;
    }

    public void setOneTopic(OneTopic oneTopic) {
        this.oneTopic = oneTopic;
    }

    public ManyTopic getManyTopic() {
        return manyTopic;
    }

    public void setManyTopic(ManyTopic manyTopic) {
        this.manyTopic = manyTopic;
    }

    public FillTopic getFillTopic() {
        return fillTopic;
    }

    public void setFillTopic(FillTopic fillTopic) {
        this.fillTopic = fillTopic;
    }

    public List<OneTopic> getOneTopicList() {
        return oneTopicList;
    }

    public void setOneTopicList(List<OneTopic> oneTopicList) {
        this.oneTopicList = oneTopicList;
    }
}
