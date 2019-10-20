package com.ruoyi.system.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 角色和菜单关联 sys_role_menu
 *
 * @author ruoyi
 */
@Data
@ApiModel(description="角色和菜单关联关系")
public class SysRoleMenu {

    @ApiModelProperty(value="角色ID",name="roleId",example="1")
    private Long roleId;

    @ApiModelProperty(value="菜单ID",name="menuId",example="1")
    private Long menuId;

    public SysRoleMenu() {
    }

    public Long getRoleId() {
        return this.roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getMenuId() {
        return this.menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("roleId", this.getRoleId()).append("menuId", this.getMenuId()).toString();
    }
}
