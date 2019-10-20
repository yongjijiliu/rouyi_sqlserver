package com.ruoyi.system.domain;

import com.ruoyi.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 通知公告表 sys_notice
 *
 * @author ruoyi
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(description="通知公告",parent=BaseEntity.class)
public class SysNotice extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value="公告ID",name="noticeId",example="1")
    private Long noticeId;

    @ApiModelProperty(value="公告标题",name="noticeTitle",example="温馨提醒：2018-07-01 若依新版本发布啦")
    private String noticeTitle;

    @ApiModelProperty(value="公告类型",name="noticeType",example="1",allowableValues = "1,2",reference="1=通知,2=公告")
    private String noticeType;

    @ApiModelProperty(value="公告内容",name="noticeContent",example="新版本内容")
    private String noticeContent;

    @ApiModelProperty(value="公告状态",name="status",example="0",allowableValues = "0,1",reference="0=正常,1=关闭")
    private String status;


    public SysNotice() {
    }

    public Long getNoticeId() {
        return this.noticeId;
    }

    public void setNoticeId(Long noticeId) {
        this.noticeId = noticeId;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public String getNoticeTitle() {
        return this.noticeTitle;
    }

    public void setNoticeType(String noticeType) {
        this.noticeType = noticeType;
    }

    public String getNoticeType() {
        return this.noticeType;
    }

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }

    public String getNoticeContent() {
        return this.noticeContent;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return this.status;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("noticeId", this.getNoticeId()).append("noticeTitle", this.getNoticeTitle()).append("noticeType", this.getNoticeType()).append("noticeContent", this.getNoticeContent()).append("status", this.getStatus()).append("createBy", this.getCreateBy()).append("createTime", this.getCreateTime()).append("updateBy", this.getUpdateBy()).append("updateTime", this.getUpdateTime()).append("remark", this.getRemark()).toString();
    }
}
