package com.example.controller;

import com.example.bean.User;
import com.example.service.UserService;
import com.example.utils.CodeUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.RenderedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/toRegist")
    public String toRegist(){
        return "regist";
    }

    @RequestMapping("/tologin")
    public String toLogin(Model model){
        return "login";
    }


    //验证码
    Object randomcodekey;

    @RequestMapping(value="/checkCode")
    public void checkCode(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //设置相应类型,告诉浏览器输出的内容为图片
        response.setContentType("image/jpeg");

        //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);

        CodeUtils.RandomValidateCode randomValidateCode = new CodeUtils.RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出图片方法
            HttpSession session = request.getSession();
            randomcodekey = session.getAttribute("randomcode_key");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }






    @RequestMapping("/regist")
    public String regist(String username,String password,String email){
        Integer register = userService.register(null,username,password,email);
        if (register != null){
            return "login";
        }else {
            return "regist";
        }

    }




    @RequestMapping("/login")
    public String login( String username, String password,String code){
        User user = userService.loginUser(username, password);
        if (user != null && code.equals(randomcodekey)){
            return "redirect:/togame/1";
        }else {
            return "login";
        }

    }

    @RequestMapping("/toControl")
    public String toControl(){
        return "redirect:/control.jsp";
    }

    //@RequestMapping("/toSearch")
    public String toSearch(){
        return "redirect:/search.jsp";
    }
}
