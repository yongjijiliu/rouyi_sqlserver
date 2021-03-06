package com.ruoyi.system.domain;

import com.ruoyi.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 部门表 sys_dept
 *
 * @author ruoyi
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(description="部门信息",parent=BaseEntity.class)
public class SysDept extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value="部门ID",name="deptId",example="100")
    private Long deptId;

    @ApiModelProperty(value="父部门ID",name="parentId",example="0")
    private Long parentId;

    @ApiModelProperty(value="祖级列表",name="ancestors",example="0,100")
    private String ancestors;

    @ApiModelProperty(value="部门名称",name="deptName",example="上海分公司")
    private String deptName;

    @ApiModelProperty(value="显示顺序",name="orderNum",example="1")
    private String orderNum;

    @ApiModelProperty(value="负责人",name="leader",example="lerry")
    private String leader;

    @ApiModelProperty(value="联系电话",name="phone",example="13312345678")
    private String phone;

    @ApiModelProperty(value="邮箱",name="email",example="lerry@seyao.org")
    private String email;

    @ApiModelProperty(value="部门状态",name="status",example="0",allowableValues = "0,1",reference="0=正常,1=停用")
    private String status;

    @ApiModelProperty(value="删除标志",name="status",example="0",allowableValues = "0,2",reference="0=存在,2=删除")
    private String delFlag;

    @ApiModelProperty(value="父部门名称",name="parentName",example="涩瑶软件")
    private String parentName;


    public SysDept() {
    }

    public Long getDeptId() {
        return this.deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public Long getParentId() {
        return this.parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getAncestors() {
        return this.ancestors;
    }

    public void setAncestors(String ancestors) {
        this.ancestors = ancestors;
    }

    public String getDeptName() {
        return this.deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getOrderNum() {
        return this.orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getLeader() {
        return this.leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDelFlag() {
        return this.delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getParentName() {
        return this.parentName;
    }


    public void setParentName(String parentName) {
        this.parentName = parentName;
    }



}
