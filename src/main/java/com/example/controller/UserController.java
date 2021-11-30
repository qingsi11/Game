package com.example.controller;

import com.example.bean.User;
import com.example.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/tologin")
    public String toLogin(){
        return "login";
    }


    @RequestMapping("/login")
    public String login(String username, String password){
        User user = userService.loginUser(username, password);
        if (user != null){
            return "forward:/index.jsp";
        }else {
            return "login";
        }


    }


}
