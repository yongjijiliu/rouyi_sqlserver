package com.ruoyi.common.base;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.constant.Constants;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Entity基类
 *
 * @author ruoyi
 */
@Data
public class BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value="搜索值",name="searchValue")
    private String searchValue;

    /**
     * 创建者
     */
    @ApiModelProperty(value="创建者",name="createBy",example="lerry")
    private String createBy;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value="创建时间",name="createTime",example="2018-12-15 18:03:58",dataType="java.util.Date")
    private Date createTime;

    @ApiModelProperty(value="更新者",name="updateBy",example="lerry")
    private String updateBy;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value="更新时间",name="updateTime",example="2018-12-15 18:03:58",dataType="java.util.Date")
    private Date updateTime;

    @ApiModelProperty(value="备注",name="remark")
    private String remark;

    @ApiModelProperty(value="请求参数",name="params")
    private transient Map<String, Object> params;



    public String getSearchValue() {
        return this.searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }

    public String getCreateBy() {
        return this.createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateBy() {
        return this.updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }


    public Map<String, Object> getParams() {
        if (params == null) {
            params = new HashMap<>(Constants.INITIAL_CAPACITY);
        }
        return params;
    }

    public void setParams(Map<String, Object> params) {
        this.params = params;
    }
}
