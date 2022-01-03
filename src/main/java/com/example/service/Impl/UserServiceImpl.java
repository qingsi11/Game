package com.example.service.Impl;

import com.example.bean.User;
import com.example.dao.UserDao;
import com.example.service.UserService;
import org.apache.ibatis.annotations.Param;
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

    @Override
    public Integer register(Integer id, String username, String password,String email) {
        Integer saveUser = UserDao.saveUser(id,username, password, email);
        return saveUser;
    }




}
