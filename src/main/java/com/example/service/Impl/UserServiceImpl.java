package com.example.service.Impl;

import com.example.bean.User;
import com.example.dao.UserDao;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    UserDao UserDao;

    @Override
    public User loginUser(String username,String password) {
        return UserDao.getUser(username,password);
    }
}
