package com.gethin.mapper;

import java.util.Map;

import com.gethin.po.User;

public interface UserMapper{
public User getUser(long id);
public User getUserByMap(Map<String, String> params);
public int insertUser(User user);
}
