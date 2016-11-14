
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `${tablePre}${proClassUpper}`
-- ----------------------------
DROP TABLE IF EXISTS `${tablePre}${proClassUpper}`;
CREATE TABLE `${tablePre}${proClassUpper}` (
 	`id` varchar(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
<#list fieldList as var>
	<#if var.attributeType == '1'>
    `${var.attributeName}` varchar(${var.size}) DEFAULT '${var.defaultVal}' COMMENT '${var.remake}',
	<#elseif var.attributeType == '2' >
    `${var.attributeName}` decimal(${var.size}) DEFAULT '${var.defaultVal}' COMMENT '${var.remake}',
	<#elseif var.attributeType == '3' >
    `${var.attributeName}` int(${var.size}) DEFAULT '${var.defaultVal}' COMMENT '${var.remake}',
	<#elseif var.attributeType == '4' >
    `${var.attributeName}` timestamp(0) DEFAULT '${var.defaultVal}' COMMENT '${var.remake}',
	<#elseif var.attributeType == '5' >
    `${var.attributeName}` text(） DEFAULT '${var.defaultVal}' COMMENT '${var.remake}',
	</#if>
</#list>
  	PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
