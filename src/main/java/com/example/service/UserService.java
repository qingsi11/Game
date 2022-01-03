package com.example.service;

import com.example.bean.User;


public interface UserService {

    User loginUser(String username,String password);

    Integer register(Integer id,String username,String password,String email);
}
