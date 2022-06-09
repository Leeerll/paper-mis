package com.mis.springboot.service;

import com.mis.springboot.entity.User;
import com.mis.springboot.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service    //把类注入SPRINGBOOT容器
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public int save(User user){
        if(user.getId()==null){ //如果user有ID则表示是新增
            return userMapper.insert(user);
        }else{  //否则为更新
            return userMapper.update(user);
        }
    }

}
