package com.qingge.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@TableName("sys_role_menu")
@Data
public class RoleMenu {


    @TableId(type = IdType.AUTO)
    private Integer roleId;
    private Integer menuId;

}
