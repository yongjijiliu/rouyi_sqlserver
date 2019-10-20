package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 岗位表 sys_post
 *
 * @author ruoyi
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(description="岗位信息",parent=BaseEntity.class)
public class SysPost extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @Excel(name = "岗位序号")
    @ApiModelProperty(value="岗位序号",name="postId",example="1")
    private Long postId;

    @Excel(name = "岗位编码")
    @ApiModelProperty(value="岗位编码",name="postCode",example="ceo")
    private String postCode;

    @Excel(name = "岗位名称")
    @ApiModelProperty(value="岗位名称",name="postName",example="董事长")
    private String postName;

    @Excel(name = "岗位排序")
    @ApiModelProperty(value="岗位排序",name="postSort",example="1")
    private String postSort;

    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    @ApiModelProperty(value="状态",name="status",example="0",allowableValues = "0,1",reference="0=正常,1=停用")
    private String status;

    @ApiModelProperty(value="用户是否存在此岗位标识",name="flag",example="0")
    private boolean flag = false;



    public SysPost() {
    }

    public Long getPostId() {
        return this.postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public String getPostCode() {
        return this.postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getPostName() {
        return this.postName;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    public String getPostSort() {
        return this.postSort;
    }

    public void setPostSort(String postSort) {
        this.postSort = postSort;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean isFlag() {
        return this.flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("postId", this.getPostId()).append("postCode", this.getPostCode()).append("postName", this.getPostName()).append("postSort", this.getPostSort()).append("status", this.getStatus()).append("createBy", this.getCreateBy()).append("createTime", this.getCreateTime()).append("updateBy", this.getUpdateBy()).append("updateTime", this.getUpdateTime()).append("remark", this.getRemark()).toString();
    }



}
