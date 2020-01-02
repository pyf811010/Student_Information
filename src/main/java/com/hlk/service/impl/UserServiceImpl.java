package com.hlk.service.impl;

import com.hlk.dao.UserMapper;
import com.hlk.pojo.State;
import com.hlk.pojo.User;
import com.hlk.service.UserService;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

/**
 * Created by lenovo on 2017/4/19.
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public User getUserByUserName(String user_name) {
        User user1= userMapper.getUserByUserName(user_name);
        return user1;
    }

    public User checkLogin(String user_name,String password) {
        User user = userMapper.getUserByUserName(user_name);
        if(user!=null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    

	public State dealLogin(User user) {
		State state = null;
        User a = userMapper.findByName(user.getUser_name());

        //不存在此用户
        if (null == a) {
            state = new State(false, "此用户名不存在！");
            return state;
        }

       /* if (a.getUs_type().equals("student")) {
            state = new State(false, "请进入学生入口进行登录，当前系统为教师版!");
            return state;
        }*/


        String password = a.getPassword();
        if(!(password.equals(user.getPassword()))){
        	state = new State(false, "用户名或密码错误!");
            return state;
        }else{
        	String user_name = a.getUser_name();

            //没有异常，将用户名设置进消息中
            state = new State(true, user_name);

            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            System.out.println(state);
            System.out.println("用户ID:" + a.getId() + " 姓名:" + a.getUser_name() + " 于" + df.format(new Date()) + " 登录系统");
            return state;
        }
}

	
	@Transactional(readOnly = false) 
	public State addUser(User user) {
		State state = null;
        User a = userMapper.findByName(user.getUser_name());

        //已存在此用户
        if (null != a) {
            state = new State(false, "此用户名已经存在！");
            return state;
        }else{
        	state = new State(true, "管理员注册成功");
        	int i = userMapper.addUser(user);
            if (i > 0) {
                return state;
            }
        }
        state = new State(false, "添加失败");
        return state;
	}
}
