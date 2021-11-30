package com.example.dao;

import com.example.bean.User;

public interface UserDao {
    User getUser(String username,String password);
}
