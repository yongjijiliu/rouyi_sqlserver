package com.ruoyi.system.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;

/**
 * 角色和部门关联 sys_role_dept
 *
 * @author ruoyi
 */
@Data
@ApiModel(description="角色和部门关联关系")
public class SysRoleDept implements Serializable {

    @ApiModelProperty(value="角色ID",name="roleId",example="1")
    private Long roleId;

    @ApiModelProperty(value="部门ID",name="deptId",example="1")
    private Long deptId;


    public SysRoleDept() {
    }

    public Long getRoleId() {
        return this.roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getDeptId() {
        return this.deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("roleId", this.getRoleId()).append("deptId", this.getDeptId()).toString();
    }
}
