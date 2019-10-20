package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 系统访问记录表 sys_logininfor
 *
 * @author ruoyi
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(description="系统访问记录",parent=BaseEntity.class)
public class SysLogininfor extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @Excel(name = "序号")
    @ApiModelProperty(value="序号",name="infoId",example="1")
    private Long infoId;

    @Excel(name = "用户账号")
    @ApiModelProperty(value="用户账号",name="loginName",example="admin")
    private String loginName;

    @Excel(name = "登录状态", readConverterExp = "0=成功,1=失败")
    @ApiModelProperty(value="登录状态",name="status",example="0",allowableValues = "0,1",reference="0=成功,1=失败")
    private String status;

    @Excel(name = "登录地址")
    @ApiModelProperty(value="登录IP地址",name="ipaddr",example="127.0.0.1")
    private String ipaddr;

    @Excel(name = "登录地点")
    @ApiModelProperty(value="登录地点",name="loginLocation",example="内网IP")
    private String loginLocation;

    @Excel(name = "浏览器")
    @ApiModelProperty(value="浏览器类型",name="browser",example="Chrome")
    private String browser;

    @Excel(name = "操作系统 ")
    @ApiModelProperty(value="操作系统",name="os",example="Windows 10")
    private String os;

    @Excel(name = "提示消息")
    @ApiModelProperty(value="提示消息",name="msg",example="登录成功")
    private String msg;

    @Excel(name = "访问时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value="访问时间",name="loginTime",example="2018-12-15 18:03:58",dataType="java.util.Date")
    private Date loginTime;


    public SysLogininfor() {
    }

    public Long getInfoId() {
        return this.infoId;
    }

    public void setInfoId(Long infoId) {
        this.infoId = infoId;
    }

    public String getLoginName() {
        return this.loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getIpaddr() {
        return this.ipaddr;
    }

    public void setIpaddr(String ipaddr) {
        this.ipaddr = ipaddr;
    }

    public String getLoginLocation() {
        return this.loginLocation;
    }

    public void setLoginLocation(String loginLocation) {
        this.loginLocation = loginLocation;
    }

    public String getBrowser() {
        return this.browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public String getOs() {
        return this.os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Date getLoginTime() {
        return this.loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("infoId", this.getInfoId()).append("loginName", this.getLoginName()).append("ipaddr", this.getIpaddr()).append("loginLocation", this.getLoginLocation()).append("browser", this.getBrowser()).append("os", this.getOs()).append("status", this.getStatus()).append("msg", this.getMsg()).append("loginTime", this.getLoginTime()).toString();
    }
}