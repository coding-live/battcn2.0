package com.battcn.platform.entity.${upPack};

import com.battcn.platform.entity.community.CommunityEntity;
import com.battcn.platform.entity.hospital.HospitalEntity;
import java.util.Date;
import javax.persistence.*;

@Table(name = "${tablePre}${proClass}")
public class ${proClass}Entity implements java.io.Serializable {
/**
* 主键
* 表字段 : ${tablePre}${proClass}.id
* Create By ${user} 2016/10/25
*/
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "id", unique = true, nullable = false)
private String id;
<#list entityList as var>
    <#if var.attributeType == '1' || var.attributeType == '5'>
    /**
    * ${var.remake}
    * 表字段 : ${tablePre}${proClass}.${var.attributeName}
    * Create By ${user} 2016/10/25
    */
    private String ${var.attributeName};

    <#elseif var.attributeType  == '2'>
    /**
    * ${var.remake}
    * 表字段 : ${tablePre}${proClass}.${var.attributeName}
    * Create By ${user} 2016/10/25
    */
    private Double ${var.attributeName};
    <#elseif var.attributeType  == '3'>
    `  /**
    * ${var.remake}
    * 表字段 : ${tablePre}${proClass}.${var.attributeName}
    * Create By ${user} 2016/10/25
    */
    private Integer ${var.attributeName};
    <#elseif var.attributeType  == '4'>
    `  /**
    * ${var.remake}
    * 表字段 : ${tablePre}${proClass}.${var.attributeName}
    * Create By ${user} 2016/10/25
    */
    private Date ${var.attributeName};
    </#if>
</#list>
    public ${proClass}Entity() {
    super();
    }
    ${constmain}
    /**
    * 主键
    * @return id 主键
    */
    public String getId() {
    return id;
    }

    /**
    * 主键
    * @param id 主键
    */
    public void setId(String id) {
    this.id = id;
    }
<#list entityList as entity>
    <#if entity.attributeType == '1' || entity.attributeType == '5'>
    /**
    * ${entity.remake}
    * @return ${entity.attributeName ? cap_first} ${entity.remake}
    */
    public String get${entity.attributeName ? cap_first}() {
    return  ${entity.attributeName ? uncap_first};
    };
    /**
    * ${entity.remake}
    * @param ${entity.attributeName ? cap_first}  ${entity.remake}
    */
    public void set${entity.attributeName ? cap_first}(String ${entity.attributeName ? uncap_first}) {
    this.${entity.attributeName ? uncap_first} = ${entity.attributeName ? uncap_first};
    }
   <#elseif entity.attributeType == '2'>
    /**
    * ${entity.remake}
    * @return ${entity.attributeName ? cap_first} ${entity.remake}
    */
    public Double get${entity.attributeName ? cap_first}() {
    return  ${entity.attributeName ? uncap_first};
    };
   /**
   * ${entity.remake}
   * @param ${entity.attributeName ? cap_first}  ${entity.remake}
   */
   public void set${entity.attributeName ? cap_first}(Double ${entity.attributeName ? uncap_first}) {
   this.${entity.attributeName ? uncap_first} = ${entity.attributeName ? uncap_first};
   }
   <#elseif entity.attributeType == '3'>
    /**
    * ${entity.remake}
    * @return ${entity.attributeName ? cap_first} ${entity.remake}
    */
    public Integer get${entity.attributeName ? cap_first}() {
    return  ${entity.attributeName ? uncap_first};
    };
    /**
    * ${entity.remake}
    * @param ${entity.attributeName ? cap_first}  ${entity.remake}
    */
    public void set${entity.attributeName ? cap_first}(Integer ${entity.attributeName ? uncap_first}) {
    this.${entity.attributeName ? uncap_first} = ${entity.attributeName ? uncap_first};
    }
    <#elseif entity.attributeType == '4'>
    /**
    * ${entity.remake}
    * @return ${entity.attributeName ? cap_first} ${entity.remake}
    */
    public Date get${entity.attributeName ? cap_first}() {
    return  ${entity.attributeName ? uncap_first};
    };
    /**
    * ${entity.remake}
    * @param ${entity.attributeName ? cap_first}  ${entity.remake}
    */
    public void set${entity.attributeName ? cap_first}(Date ${entity.attributeName ? uncap_first}) {
    this.${entity.attributeName ? uncap_first} = ${entity.attributeName ? uncap_first};
    }
    </#if>
</#list>



}