//与数据库交互
package com.mis.springboot.mapper;

import com.mis.springboot.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {

    @Select("SELECT* from sys_user")
    List<User> findAll();

    @Insert("insert into sys_user(username,password,nickname,email,phone,address) VALUES " +
            "(#{username},#{password},#{nickname},#{email},#{phone},#{address})")
    int insert(User user);

    int update(User user);

    @Delete("delete from sys_user where id = #{id}")
    Integer deleteById(@Param("id") Integer id);    //括号内参数名字与上一行{}内id对应

    @Select("select * from sys_user where username like #{username} limit #{pageNum}, #{pageSize}")
    List<User> selectPage(Integer pageNum, Integer pageSize, String username);

    @Select("select count(*) from sys_user where username like concat('%', #{username}, '%') ")
    Integer selectTotal(String username);
}
