package com.hlk.dao;

import com.hlk.pojo.User;

/**
 * Created by lenovo on 2017/4/18.
 */
public interface UserMapper {

//    public void addUser(User user);
    public User getUserByUserName(String user_name);
	public User findByName(String user_name);//同上一个
	public int addUser(User user);
}
