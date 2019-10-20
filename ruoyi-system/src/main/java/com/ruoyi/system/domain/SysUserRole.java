package com.ruoyi.system.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;

/**
 * 用户和角色关联 sys_user_role
 *
 * @author ruoyi
 */
@Data
@ApiModel(description="用户和角色关联关系")
public class SysUserRole implements Serializable {

    @ApiModelProperty(value="用户ID",name="userId",example="1")
    private Long userId;

    @ApiModelProperty(value="角色ID",name="roleId",example="1")
    private Long roleId;


    public SysUserRole() {
    }

    public Long getUserId() {
        return this.userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRoleId() {
        return this.roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("userId", this.getUserId()).append("roleId", this.getRoleId()).toString();
    }
}
