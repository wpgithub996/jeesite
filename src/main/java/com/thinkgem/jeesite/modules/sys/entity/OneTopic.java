package com.thinkgem.jeesite.modules.sys.entity;

/*
* 单选题
* */

import com.thinkgem.jeesite.common.persistence.ActEntity;
import com.thinkgem.jeesite.common.persistence.DataEntity;

public class OneTopic  extends ActEntity<OneTopic> {
    private static final long serialVersionUID = 1L;
    public String topicOneName;//单选题名字
    public String topicOneOption;//单选题选项
    public String topicOneScore;//单选题分值
    public String topicOneCorrectAnswer;//单选题正确答案
    public String invQuInfoNumber;
    public String getTopicOneName() {
        return topicOneName;
    }

    public void setTopicOneName(String topicOneName) {
        this.topicOneName = topicOneName;
    }

    public String getTopicOneOption() {
        return topicOneOption;
    }

    public void setTopicOneOption(String topicOneOption) {
        this.topicOneOption = topicOneOption;
    }

    public String getTopicOneScore() {
        return topicOneScore;
    }

    public void setTopicOneScore(String topicOneScore) {
        this.topicOneScore = topicOneScore;
    }

    public String getTopicOneCorrectAnswer() {
        return topicOneCorrectAnswer;
    }

    public void setTopicOneCorrectAnswer(String topicOneCorrectAnswer) {
        this.topicOneCorrectAnswer = topicOneCorrectAnswer;
    }

    public String getInvQuInfoNumber() {
        return invQuInfoNumber;
    }

    public void setInvQuInfoNumber(String invQuInfoNumber) {
        this.invQuInfoNumber = invQuInfoNumber;
    }
}
