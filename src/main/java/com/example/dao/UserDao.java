package com.example.dao;

import com.example.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    User getUser(@Param("username") String username,@Param("password") String password);

    Integer saveUser(@Param("id") Integer id, @Param("username")String username,  @Param("password")String password, @Param("email")  String email);
}
