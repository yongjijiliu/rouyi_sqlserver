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
 * 参数配置表 sys_config
 *
 * @author ruoyi
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(description="参数配置",parent=BaseEntity.class)
public class SysConfig extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @Excel(name = "参数主键")
    @ApiModelProperty(value="参数主键",name="configId",example="1")
    private Long configId;

    @Excel(name = "参数名称")
    @ApiModelProperty(value="参数名称",name="configName",example="主框架页-默认皮肤样式名称")
    private String configName;

    @Excel(name = "参数键名")
    @ApiModelProperty(value="参数键名",name="configKey",example="sys.index.skinName")
    private String configKey;

    @Excel(name = "参数键值")
    @ApiModelProperty(value="参数键值",name="configValue",example="skin-default")
    private String configValue;

    @Excel(name = "系统内置", readConverterExp = "Y=是,N=否")
    @ApiModelProperty(value="系统内置",name="configType",example="Y",allowableValues = "Y,N",reference="Y=是,N=否")
    private String configType;


    public SysConfig() {
    }

    public Long getConfigId() {
        return this.configId;
    }

    public void setConfigId(Long configId) {
        this.configId = configId;
    }

    public String getConfigName() {
        return this.configName;
    }

    public void setConfigName(String configName) {
        this.configName = configName;
    }

    public String getConfigKey() {
        return this.configKey;
    }

    public void setConfigKey(String configKey) {
        this.configKey = configKey;
    }

    public String getConfigValue() {
        return this.configValue;
    }

    public void setConfigValue(String configValue) {
        this.configValue = configValue;
    }

    public String getConfigType() {
        return this.configType;
    }

    public void setConfigType(String configType) {
        this.configType = configType;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append("configId", this.getConfigId()).append("configName", this.getConfigName()).append("configKey", this.getConfigKey()).append("configValue", this.getConfigValue()).append("configType", this.getConfigType()).append("createBy", this.getCreateBy()).append("createTime", this.getCreateTime()).append("updateBy", this.getUpdateBy()).append("updateTime", this.getUpdateTime()).append("remark", this.getRemark()).toString();
    }

}
