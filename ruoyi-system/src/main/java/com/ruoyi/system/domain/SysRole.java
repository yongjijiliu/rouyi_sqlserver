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
 * 角色表 sys_role
 *
 * @author ruoyi
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(description="角色信息",parent=BaseEntity.class)
public class SysRole extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @Excel(name = "角色序号")
    @ApiModelProperty(value="角色序号",name="roleId",example="1")
    private Long roleId;

    @Excel(name = "角色名称")
    @ApiModelProperty(value="角色名称",name="roleName",example="管理员")
    private String roleName;

    @Excel(name = "角色权限")
    @ApiModelProperty(value="角色权限",name="roleKey",example="admin")
    private String roleKey;

    @Excel(name = "角色排序")
    @ApiModelProperty(value="角色排序",name="roleSort",example="1")
    private String roleSort;

    @Excel(name = "数据范围", readConverterExp = "1=所有数据权限,2=自定义数据权限,3=本部门数据权限,4=本部门及以下数据权限")
    @ApiModelProperty(value="数据范围",name="dataScope",example="0",allowableValues = "1,2",reference="1=所有数据权限,2=自定义数据权限,3=本部门数据权限,4=本部门及以下数据权限")
    private String dataScope;

    @Excel(name = "角色状态", readConverterExp = "0=正常,1=停用")
    @ApiModelProperty(value="角色状态",name="status",example="0",allowableValues = "0,1",reference="0=正常,1=停用")
    private String status;

    @ApiModelProperty(value="删除标志",name="delFlag",example="0",allowableValues = "0,2",reference="0=正常,2=删除")
    private String delFlag;

    @ApiModelProperty(value="用户是否存在此角色标识",name="flag",example="0")
    private boolean flag = false;

    @ApiModelProperty(value="菜单组",name="menuIds",hidden = true)
    private Long[] menuIds;

    @ApiModelProperty(value="部门组",name="deptIds",hidden = true)
    private Long[] deptIds;


    public Long getRoleId() {
        return this.roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getDataScope() {
        return this.dataScope;
    }

    public void setDataScope(String dataScope) {
        this.dataScope = dataScope;
    }

    public String getRoleName() {
        return this.roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleKey() {
        return this.roleKey;
    }

    public void setRoleKey(String roleKey) {
        this.roleKey = roleKey;
    }

    public String getRoleSort() {
        return this.roleSort;
    }

    public void setRoleSort(String roleSort) {
        this.roleSort = roleSort;
    }

    public String getStatus() {
        return this.status;
    }

    public String getDelFlag() {
        return this.delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
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

    public Long[] getMenuIds() {
        return this.menuIds;
    }

    public void setMenuIds(Long[] menuIds) {
        this.menuIds = menuIds;
    }

    public Long[] getDeptIds() {
        return this.deptIds;
    }

    public void setDeptIds(Long[] deptIds) {
        this.deptIds = deptIds;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("roleId", this.getRoleId()).append("roleName", this.getRoleName()).append("roleKey", this.getRoleKey()).append("roleSort", this.getRoleSort()).append("dataScope", this.getDataScope()).append("status", this.getStatus()).append("delFlag", this.getDelFlag()).append("createBy", this.getCreateBy()).append("createTime", this.getCreateTime()).append("updateBy", this.getUpdateBy()).append("updateTime", this.getUpdateTime()).append("remark", this.getRemark()).toString();
    }



}
